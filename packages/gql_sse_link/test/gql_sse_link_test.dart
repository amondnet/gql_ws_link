import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:gql_exec/gql_exec.dart';
import 'package:gql_exec/src/error.dart';
import 'package:gql_exec/src/request.dart';
import 'package:gql_exec/src/response.dart';
import 'package:gql_link/gql_link.dart';
import 'package:gql_sse_link/gql_sse_link.dart';
import 'package:http2/http2.dart';
import 'package:meta/meta.dart';
import 'package:sse_client/sse_client.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () async {
      final uri = Uri.parse('https://localhost:4000/graphql/stream');
      var socket = await connect(uri);

      var transport = ClientTransportConnection.viaSocket(
        socket,
        settings: ClientSettings(
          allowServerPushes: true,
        ),
      );
      var headers = [
        Header.ascii(':method', 'POST'),
        Header.ascii(':path', uri.path),
        Header.ascii(':scheme', uri.scheme),
        Header.ascii(':authority', uri.host),
        Header.ascii('content-type', 'application/json'),
      ];

      // check transport is open
      var stream = transport.makeRequest(headers, endStream: false);

      var sub = """
        subscription {
          greetings 
        }
      """;

      var payload = {'query': sub};

      stream.sendData(utf8.encode(jsonEncode(payload)), endStream: true);

      print('sent');
      Completer completer = Completer();

      // plain event
      await for (var message in stream.incomingMessages) {
        print('mmm');

        if (message is HeadersStreamMessage) {
          print('HeadersStreamMessage');
          message.headers.forEach((element) {
            print(utf8.decode(element.name));
            print(utf8.decode(element.value));
          });
        } else if (message is DataStreamMessage) {
          final data = jsonDecode(utf8.decode(message.bytes));

          // Use [message.bytes] (but respect 'content-encoding' header)
          if (data['event'] == 'complete') {
            stream.terminate();
          } else if (data['complete']) {
            print('data');
            completer.complete();
          }
        }
      }

      stream.peerPushes.listen((TransportStreamPush push) {
        print('listen');
        completer.complete();

        if (push is ClientTransportStream) {}
      });

      await completer.future;
    });
  });
}

Future<Socket> connect(Uri uri) async {
  var useSSL = uri.scheme == 'https';
  if (useSSL) {
    var secureSocket = await SecureSocket.connect(uri.host, uri.port,
        supportedProtocols: ['h2'], onBadCertificate: (_) => true);
    if (secureSocket.selectedProtocol != 'h2') {
      throw Exception('Failed to negogiate http/2 via alpn. Maybe server '
          "doesn't support http/2.");
    }
    return secureSocket;
  } else {
    return await Socket.connect(uri.host, uri.port);
  }
}
