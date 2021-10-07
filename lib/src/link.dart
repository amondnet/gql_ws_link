import 'dart:async';
import 'dart:html';

import 'package:gql_exec/src/request.dart';
import 'package:gql_exec/src/response.dart';
import 'package:gql_link/gql_link.dart';
import 'package:gql_websocket_link/src/client.dart';
import 'package:uuid/uuid.dart';

final _uuid = Uuid();

typedef EventListener = Never Function(Event event);

/// Configuration used for the GraphQL over WebSocket link.
///
/// @category Client
class LinkOptions {
  final String url;

  /// Optional parameters, passed through the `payload` field with the `ConnectionInit` message,
  /// that the client specifies when establishing a connection with the server. You can use this
  /// for securely passing arguments for authentication.
  ///
  /// If you decide to return a promise, keep in mind that the server might kick you off if it
  /// takes too long to resolve! Check the `connectionInitWaitTimeout` on the server for more info.
  ///
  /// Throwing an error from within this function will close the socket with the `Error` message
  /// in the close event reason.
  Map<String, dynamic> Function()? connectionParams;

  /// The timout between dispatched keep-alive messages, naimly server pings. Internally
  /// dispatches the `PingMessage` type to the server and expects a `PongMessage` in response.
  /// This helps with making sure that the connection with the server is alive and working.
  ///
  /// Timeout countdown starts from the moment the socket was opened and subsequently
  /// after every received `PongMessage`.
  ///
  /// Note that NOTHING will happen automatically with the client if the server never
  /// responds to a `PingMessage` with a `PongMessage`. If you want the connection to close,
  /// you should implement your own logic on top of the client. A simple example looks like this:
  ///
  /// ```js
  /// import { createClient } from 'graphql-ws';
  ///
  /// let activeSocket, timedOut;
  /// createClient({
  ///   url: 'ws://i.time.out:4000/after-5/seconds',
  ///   keepAlive: 10_000, // ping server every 10 seconds
  ///   on: {
  ///     connected: (socket) => (activeSocket = socket),
  ///     ping: (received) => {
  ///       if (!received) // sent
  ///         timedOut = setTimeout(() => {
  ///           if (activeSocket.readyState === WebSocket.OPEN)
  ///             activeSocket.close(4408, 'Request Timeout');
  ///         }, 5_000); // wait 5 seconds for the pong and then close the connection
  ///     },
  ///     pong: (received) => {
  ///       if (received) clearTimeout(timedOut); // pong is received, clear connection close timeout
  ///     },
  ///   },
  /// });
  /// ```
  ///
  /// @default 0
  int? keepAlive;

  /// The amount of time for which the client will wait
  /// for `ConnectionAck` message.
  ///
  /// Set the value to `Infinity`, `''`, `0`, `null` or `undefined` to skip waiting.
  ///
  /// If the wait timeout has passed and the server
  /// has not responded with `ConnectionAck` message,
  /// the client will terminate the socket by
  /// dispatching a close event `4418: Connection acknowledgement timeout`
  ///
  /// @default 0
  int? connectionAckWaitTimeout;

  /// Disable sending the `PongMessage` automatically.
  ///
  /// Useful for when integrating your own custom client pinger that performs
  /// custom actions before responding to a ping, or to pass along the optional pong
  /// message payload. Please check the readme recipes for a concrete example.
  bool? disablePong;

  /// How many times should the client try to reconnect on abnormal socket closure before it errors out?
  ///
  /// The library classifies the following close events as fatal:
  /// - _All internal WebSocket fatal close codes (check `isFatalInternalCloseCode` in `src/client.ts` for exact list)_
  /// - `4500: Internal server error`
  /// - `4400: Bad request`
  /// - `4401: Unauthorized` _tried subscribing before connect ack_
  /// - `4406: Subprotocol not acceptable`
  /// - `4409: Subscriber for <id> already exists` _distinction is very important_
  /// - `4429: Too many initialisation requests`
  ///
  /// These events are reported immediately and the client will not reconnect.
  ///
  /// @default 5
  int? retryAttempts;

  Future<void> Function(int retries)? retryWait;

  bool Function(dynamic event)? isFatalConnectionProblem;

  LinkOptions(this.url);

  EventListener? on;

  String Function()? generateID;
}

class GraphQLOverWebsocketLink extends Link {
  final LinkOptions _options;

  GraphQLOverWebsocketLink(this._options);

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    final String id = _options.generateID() ?? _uuid.v4();

    // TODO: implement request
    throw UnimplementedError();
  }

  @override
  dispose() async {}
}
