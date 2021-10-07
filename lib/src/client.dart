import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'messages.dart';

// name: Event
part 'client.freezed.dart';

part 'client.g.dart';

@freezed
class Event with _$Event {
  Event._();

  /// WebSocket started connecting.
  factory Event.connecting() = EventConnecting;

  /// WebSocket has opened.
  factory Event.opened() = EventOpened;

  /// Open WebSocket connection has been acknowledged.
  factory Event.connected() = EventConnected;

  /// `PingMessage` has been received or sent.
  factory Event.ping() = EventPing;

  ///  `PongMessage` has been received or sent.
  factory Event.pong() = EventPong;

  /// A message has been received.
  factory Event.message() = EventMessage;

  /// WebSocket connection has closed.
  factory Event.closed() = EventClosed;

  /// WebSocket connection had an error.
  factory Event.error() = EventError;
}

typedef EventConnectingListener = void Function();

/// The first argument is actually the `WebSocket`, but to avoid
/// bundling DOM typings because the client can run in Node env too,
/// you should assert the websocket type during implementation.
typedef EventOpenedListener = void Function(WebSocket socket);

/// The first argument is actually the `WebSocket`, but to avoid
/// bundling DOM typings because the client can run in Node env too,
/// you should assert the websocket type during implementation.
///
/// Also, the second argument is the optional payload that the server may
/// send through the `ConnectionAck` message.
typedef EventConnectedListener = void Function(
    WebSocket socket, dynamic payload);

/// The first argument communicates whether the ping was received from the server.
/// If `false`, the ping was sent by the client.
typedef EventPingListener = void Function(bool received, dynamic payload);

/// The first argument communicates whether the pong was received from the server.
/// If `false`, the pong was sent by the client.
typedef EventPongListener = void Function(bool received, dynamic payload);

/// The first argument communicates whether the pong was received from the server.
/// If `false`, the pong was sent by the client.
typedef EventMessageListener = void Function(
    GraphQLOverWebsocketMessage message);

/// The argument is actually the websocket `CloseEvent`
typedef EventClosedListener = void Function(int? code);
