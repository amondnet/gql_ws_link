import 'package:freezed_annotation/freezed_annotation.dart';

// name: GraphQLOverWebsocketMessage
part 'messages.freezed.dart';

part 'messages.g.dart';

enum CloseCode {
  InternalServerError, // 4500
  BadRequest, // 4400
  /// Tried subscribing before connect ack */
  Unauthorized, // 4401
  Forbidden, // 4403
  SubprotocolNotAcceptable, // 4406
  ConnectionInitialisationTimeout, // 4408
  ConnectionAcknowledgementTimeout, // 4504
  // Subscriber distinction is very important */
  SubscriberAlreadyExists, // 4409
  TooManyInitialisationRequests, // 4429,
}

class MessageType {
  MessageType._();

  static const String connectionInit = 'connection_init'; // Client -> Server
  static const String connectionAck = 'connection_ack'; // Server -> Client

  static const String ping = 'ping'; // bidirectional
  static const String pong = 'pong'; // bidirectional

  static const String subscribe = 'subscribe'; // Client -> Server
  static const String next = 'next'; // Server -> Client
  static const String error = 'error'; // Server -> Client
  static const String complete = 'complete'; // Server -> Client

  static const String connectionTerminate = 'connection_terminate';

  // default tag for use in identifying issues
  static const String unknown = 'unknown';
}

/// Base type for representing a server-client subscription message.
/*
abstract class GraphQLOverWebsocketMessage extends JsonSerializable {
  GraphQLOverWebsocketMessage(this.type);

  final String type;
}*/

@Freezed(unionKey: 'type')
class GraphQLOverWebsocketMessage with _$GraphQLOverWebsocketMessage {
  GraphQLOverWebsocketMessage._();

  @JsonSerializable()
  @FreezedUnionValue(MessageType.connectionInit)
  factory GraphQLOverWebsocketMessage.init() = ConnectionInitMessage;

  @JsonSerializable()
  @FreezedUnionValue(MessageType.connectionAck)
  factory GraphQLOverWebsocketMessage.ack() = ConnectionAckMessage;

  @JsonSerializable()
  @FreezedUnionValue(MessageType.ping)
  factory GraphQLOverWebsocketMessage.ping() = PingMessage;

  @JsonSerializable()
  @FreezedUnionValue(MessageType.pong)
  factory GraphQLOverWebsocketMessage.pong() = PongMessage;

  @JsonSerializable()
  @FreezedUnionValue(MessageType.subscribe)
  factory GraphQLOverWebsocketMessage.subscribe() = SubscribeMessage;

  factory GraphQLOverWebsocketMessage.fromJson(Map<String, dynamic> json) =>
      _$GraphQLOverWebsocketMessageFromJson(json);
}

class SubscribePayload {
  final String? operationName;
  final String query;
  final Map<String, dynamic>? variables;
  final Map<String, dynamic>? extensions;

  SubscribePayload(
      {this.operationName,
      required this.query,
      this.variables,
      this.extensions});
}

class ExecutionResult {
  List<dynamic>? errors;
  Map<String, dynamic>? data;
  bool? hasNext;
  Map<String, dynamic>? extensions;
}

@freezed
class ExecutionResult with _$ExecutionResult {
  ExecutionResult._();

  factory ExecutionResult({
    List<dynamic>? errors,
    Map<String, dynamic>? data,
    bool? hasNext,
    Map<String, dynamic>? extensions,
  }) = _ExecutionResult;

  factory ExecutionResult.patch({
    List<dynamic>? errors,
    dynamic data,
    List<dynamic>? path,
    String? label,
    bool hasNext,
    Map<String, dynamic>? extensions,
  }) = ExecutionPatchResult;
}

class ExecutionPatchResult {
  List<dynamic>? errors;
  dynamic data;

  /// String or num
  List<dynamic>? path;
  String? label;
  bool hasNext;
  Map<String, dynamic>? extensions;

  ExecutionPatchResult(
      {this.errors,
      this.data,
      this.path,
      this.label,
      required this.hasNext,
      this.extensions});
}

typedef ID = String;

class NextMessage {
  final ID id;
  final String type = MessageType.next;
  final ExecutionResult payload;

  NextMessage(this.id, this.payload);
}

class ErrorMessage {
  final ID id;
  final String type = MessageType.error;
  final List<Error> error;

  ErrorMessage(this.id, this.error);
}

class CompleteMessage {
  final ID id;
  final String type = MessageType.complete;
}
