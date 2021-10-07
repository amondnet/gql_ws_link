import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:gql_exec/gql_exec.dart';
import 'package:gql_exec/src/request.dart';
import 'package:gql_exec/src/response.dart';
import 'package:gql_link/gql_link.dart';
import 'package:http2/http2.dart';
import 'package:meta/meta.dart';
import 'package:sse_client/sse_client.dart';
import 'package:gql_exec/src/error.dart';
import 'package:http/http.dart' as http;

@immutable
class RequestId extends ContextEntry {
  final String id;

  const RequestId(this.id);

  @override
  List<Object> get fieldsForEquality => [id];
}

class SseLink extends Link {
  // Current active subscriptions
  final _requests = <Request>[];
  ClientTransportConnection? transport;
  var uri = Uri.parse('');

  _create() async {
    var socket = await connect(uri);

    transport = ClientTransportConnection.viaSocket(
      socket,
      settings: ClientSettings(
        allowServerPushes: true,
      ),
    );
  }

  @override
  Stream<Response> request(Request request, [NextLink? forward]) async* {
    final operationId = 'test';

    final requestWithContext = request.withContextEntry<RequestId>(
      RequestId(operationId),
    );

    var headers = [
      Header.ascii(':method', 'POST'),
      Header.ascii(':path', uri.path),
      Header.ascii(':scheme', uri.scheme),
      Header.ascii(':authority', uri.host),
    ];

    // check transport is open
    var stream = transport!.makeRequest(headers, endStream: true);

    // plain event
    await for (var message in stream.incomingMessages) {
      if (message is HeadersStreamMessage) {
      } else if (message is DataStreamMessage) {
        // Use [message.bytes] (but respect 'content-encoding' header)
        final data = jsonDecode(utf8.decode(message.bytes));
        if (data['event'] == 'complete') {
          stream.terminate();
        } else if (data['complete']) {}
      }
    }

    stream.peerPushes.listen((TransportStreamPush push) {
      if (push is ClientTransportStream) {}
    });
  }

  Future<Socket> connect(Uri uri) async {
    var useSSL = uri.scheme == 'https';
    if (useSSL) {
      var secureSocket = await SecureSocket.connect(uri.host, uri.port,
          supportedProtocols: ['h2']);
      if (secureSocket.selectedProtocol != 'h2') {
        throw Exception('Failed to negogiate http/2 via alpn. Maybe server '
            "doesn't support http/2.");
      }
      return secureSocket;
    } else {
      return await Socket.connect(uri.host, uri.port);
    }
  }
}

class NextMessage {
  final event = 'next';
  final ExecutionResult data;

  NextMessage(this.data);
}

class CompleteMessage {
  final event = 'complete';
}

class ExecutionResult {
  Map<String, dynamic>? data;
  bool? hasNext;
  Map<String, dynamic>? extensions;
  List<GraphQLError>? errors;
}
