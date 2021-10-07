// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EventTearOff {
  const _$EventTearOff();

  EventConnecting connecting() {
    return EventConnecting();
  }

  EventOpened opened() {
    return EventOpened();
  }

  EventConnected connected() {
    return EventConnected();
  }

  EventPing ping() {
    return EventPing();
  }

  EventPong pong() {
    return EventPong();
  }

  EventMessage message() {
    return EventMessage();
  }

  EventClosed closed() {
    return EventClosed();
  }

  EventError error() {
    return EventError();
  }
}

/// @nodoc
const $Event = _$EventTearOff();

/// @nodoc
mixin _$Event {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connecting,
    required TResult Function() opened,
    required TResult Function() connected,
    required TResult Function() ping,
    required TResult Function() pong,
    required TResult Function() message,
    required TResult Function() closed,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connecting,
    TResult Function()? opened,
    TResult Function()? connected,
    TResult Function()? ping,
    TResult Function()? pong,
    TResult Function()? message,
    TResult Function()? closed,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventConnecting value) connecting,
    required TResult Function(EventOpened value) opened,
    required TResult Function(EventConnected value) connected,
    required TResult Function(EventPing value) ping,
    required TResult Function(EventPong value) pong,
    required TResult Function(EventMessage value) message,
    required TResult Function(EventClosed value) closed,
    required TResult Function(EventError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventConnecting value)? connecting,
    TResult Function(EventOpened value)? opened,
    TResult Function(EventConnected value)? connected,
    TResult Function(EventPing value)? ping,
    TResult Function(EventPong value)? pong,
    TResult Function(EventMessage value)? message,
    TResult Function(EventClosed value)? closed,
    TResult Function(EventError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) then) =
      _$EventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventCopyWithImpl<$Res> implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._value, this._then);

  final Event _value;
  // ignore: unused_field
  final $Res Function(Event) _then;
}

/// @nodoc
abstract class $EventConnectingCopyWith<$Res> {
  factory $EventConnectingCopyWith(
          EventConnecting value, $Res Function(EventConnecting) then) =
      _$EventConnectingCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventConnectingCopyWithImpl<$Res> extends _$EventCopyWithImpl<$Res>
    implements $EventConnectingCopyWith<$Res> {
  _$EventConnectingCopyWithImpl(
      EventConnecting _value, $Res Function(EventConnecting) _then)
      : super(_value, (v) => _then(v as EventConnecting));

  @override
  EventConnecting get _value => super._value as EventConnecting;
}

/// @nodoc

class _$EventConnecting extends EventConnecting {
  _$EventConnecting() : super._();

  @override
  String toString() {
    return 'Event.connecting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EventConnecting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connecting,
    required TResult Function() opened,
    required TResult Function() connected,
    required TResult Function() ping,
    required TResult Function() pong,
    required TResult Function() message,
    required TResult Function() closed,
    required TResult Function() error,
  }) {
    return connecting();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connecting,
    TResult Function()? opened,
    TResult Function()? connected,
    TResult Function()? ping,
    TResult Function()? pong,
    TResult Function()? message,
    TResult Function()? closed,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (connecting != null) {
      return connecting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventConnecting value) connecting,
    required TResult Function(EventOpened value) opened,
    required TResult Function(EventConnected value) connected,
    required TResult Function(EventPing value) ping,
    required TResult Function(EventPong value) pong,
    required TResult Function(EventMessage value) message,
    required TResult Function(EventClosed value) closed,
    required TResult Function(EventError value) error,
  }) {
    return connecting(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventConnecting value)? connecting,
    TResult Function(EventOpened value)? opened,
    TResult Function(EventConnected value)? connected,
    TResult Function(EventPing value)? ping,
    TResult Function(EventPong value)? pong,
    TResult Function(EventMessage value)? message,
    TResult Function(EventClosed value)? closed,
    TResult Function(EventError value)? error,
    required TResult orElse(),
  }) {
    if (connecting != null) {
      return connecting(this);
    }
    return orElse();
  }
}

abstract class EventConnecting extends Event {
  factory EventConnecting() = _$EventConnecting;
  EventConnecting._() : super._();
}

/// @nodoc
abstract class $EventOpenedCopyWith<$Res> {
  factory $EventOpenedCopyWith(
          EventOpened value, $Res Function(EventOpened) then) =
      _$EventOpenedCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventOpenedCopyWithImpl<$Res> extends _$EventCopyWithImpl<$Res>
    implements $EventOpenedCopyWith<$Res> {
  _$EventOpenedCopyWithImpl(
      EventOpened _value, $Res Function(EventOpened) _then)
      : super(_value, (v) => _then(v as EventOpened));

  @override
  EventOpened get _value => super._value as EventOpened;
}

/// @nodoc

class _$EventOpened extends EventOpened {
  _$EventOpened() : super._();

  @override
  String toString() {
    return 'Event.opened()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EventOpened);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connecting,
    required TResult Function() opened,
    required TResult Function() connected,
    required TResult Function() ping,
    required TResult Function() pong,
    required TResult Function() message,
    required TResult Function() closed,
    required TResult Function() error,
  }) {
    return opened();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connecting,
    TResult Function()? opened,
    TResult Function()? connected,
    TResult Function()? ping,
    TResult Function()? pong,
    TResult Function()? message,
    TResult Function()? closed,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (opened != null) {
      return opened();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventConnecting value) connecting,
    required TResult Function(EventOpened value) opened,
    required TResult Function(EventConnected value) connected,
    required TResult Function(EventPing value) ping,
    required TResult Function(EventPong value) pong,
    required TResult Function(EventMessage value) message,
    required TResult Function(EventClosed value) closed,
    required TResult Function(EventError value) error,
  }) {
    return opened(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventConnecting value)? connecting,
    TResult Function(EventOpened value)? opened,
    TResult Function(EventConnected value)? connected,
    TResult Function(EventPing value)? ping,
    TResult Function(EventPong value)? pong,
    TResult Function(EventMessage value)? message,
    TResult Function(EventClosed value)? closed,
    TResult Function(EventError value)? error,
    required TResult orElse(),
  }) {
    if (opened != null) {
      return opened(this);
    }
    return orElse();
  }
}

abstract class EventOpened extends Event {
  factory EventOpened() = _$EventOpened;
  EventOpened._() : super._();
}

/// @nodoc
abstract class $EventConnectedCopyWith<$Res> {
  factory $EventConnectedCopyWith(
          EventConnected value, $Res Function(EventConnected) then) =
      _$EventConnectedCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventConnectedCopyWithImpl<$Res> extends _$EventCopyWithImpl<$Res>
    implements $EventConnectedCopyWith<$Res> {
  _$EventConnectedCopyWithImpl(
      EventConnected _value, $Res Function(EventConnected) _then)
      : super(_value, (v) => _then(v as EventConnected));

  @override
  EventConnected get _value => super._value as EventConnected;
}

/// @nodoc

class _$EventConnected extends EventConnected {
  _$EventConnected() : super._();

  @override
  String toString() {
    return 'Event.connected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EventConnected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connecting,
    required TResult Function() opened,
    required TResult Function() connected,
    required TResult Function() ping,
    required TResult Function() pong,
    required TResult Function() message,
    required TResult Function() closed,
    required TResult Function() error,
  }) {
    return connected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connecting,
    TResult Function()? opened,
    TResult Function()? connected,
    TResult Function()? ping,
    TResult Function()? pong,
    TResult Function()? message,
    TResult Function()? closed,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventConnecting value) connecting,
    required TResult Function(EventOpened value) opened,
    required TResult Function(EventConnected value) connected,
    required TResult Function(EventPing value) ping,
    required TResult Function(EventPong value) pong,
    required TResult Function(EventMessage value) message,
    required TResult Function(EventClosed value) closed,
    required TResult Function(EventError value) error,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventConnecting value)? connecting,
    TResult Function(EventOpened value)? opened,
    TResult Function(EventConnected value)? connected,
    TResult Function(EventPing value)? ping,
    TResult Function(EventPong value)? pong,
    TResult Function(EventMessage value)? message,
    TResult Function(EventClosed value)? closed,
    TResult Function(EventError value)? error,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class EventConnected extends Event {
  factory EventConnected() = _$EventConnected;
  EventConnected._() : super._();
}

/// @nodoc
abstract class $EventPingCopyWith<$Res> {
  factory $EventPingCopyWith(EventPing value, $Res Function(EventPing) then) =
      _$EventPingCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventPingCopyWithImpl<$Res> extends _$EventCopyWithImpl<$Res>
    implements $EventPingCopyWith<$Res> {
  _$EventPingCopyWithImpl(EventPing _value, $Res Function(EventPing) _then)
      : super(_value, (v) => _then(v as EventPing));

  @override
  EventPing get _value => super._value as EventPing;
}

/// @nodoc

class _$EventPing extends EventPing {
  _$EventPing() : super._();

  @override
  String toString() {
    return 'Event.ping()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EventPing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connecting,
    required TResult Function() opened,
    required TResult Function() connected,
    required TResult Function() ping,
    required TResult Function() pong,
    required TResult Function() message,
    required TResult Function() closed,
    required TResult Function() error,
  }) {
    return ping();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connecting,
    TResult Function()? opened,
    TResult Function()? connected,
    TResult Function()? ping,
    TResult Function()? pong,
    TResult Function()? message,
    TResult Function()? closed,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (ping != null) {
      return ping();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventConnecting value) connecting,
    required TResult Function(EventOpened value) opened,
    required TResult Function(EventConnected value) connected,
    required TResult Function(EventPing value) ping,
    required TResult Function(EventPong value) pong,
    required TResult Function(EventMessage value) message,
    required TResult Function(EventClosed value) closed,
    required TResult Function(EventError value) error,
  }) {
    return ping(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventConnecting value)? connecting,
    TResult Function(EventOpened value)? opened,
    TResult Function(EventConnected value)? connected,
    TResult Function(EventPing value)? ping,
    TResult Function(EventPong value)? pong,
    TResult Function(EventMessage value)? message,
    TResult Function(EventClosed value)? closed,
    TResult Function(EventError value)? error,
    required TResult orElse(),
  }) {
    if (ping != null) {
      return ping(this);
    }
    return orElse();
  }
}

abstract class EventPing extends Event {
  factory EventPing() = _$EventPing;
  EventPing._() : super._();
}

/// @nodoc
abstract class $EventPongCopyWith<$Res> {
  factory $EventPongCopyWith(EventPong value, $Res Function(EventPong) then) =
      _$EventPongCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventPongCopyWithImpl<$Res> extends _$EventCopyWithImpl<$Res>
    implements $EventPongCopyWith<$Res> {
  _$EventPongCopyWithImpl(EventPong _value, $Res Function(EventPong) _then)
      : super(_value, (v) => _then(v as EventPong));

  @override
  EventPong get _value => super._value as EventPong;
}

/// @nodoc

class _$EventPong extends EventPong {
  _$EventPong() : super._();

  @override
  String toString() {
    return 'Event.pong()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EventPong);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connecting,
    required TResult Function() opened,
    required TResult Function() connected,
    required TResult Function() ping,
    required TResult Function() pong,
    required TResult Function() message,
    required TResult Function() closed,
    required TResult Function() error,
  }) {
    return pong();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connecting,
    TResult Function()? opened,
    TResult Function()? connected,
    TResult Function()? ping,
    TResult Function()? pong,
    TResult Function()? message,
    TResult Function()? closed,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (pong != null) {
      return pong();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventConnecting value) connecting,
    required TResult Function(EventOpened value) opened,
    required TResult Function(EventConnected value) connected,
    required TResult Function(EventPing value) ping,
    required TResult Function(EventPong value) pong,
    required TResult Function(EventMessage value) message,
    required TResult Function(EventClosed value) closed,
    required TResult Function(EventError value) error,
  }) {
    return pong(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventConnecting value)? connecting,
    TResult Function(EventOpened value)? opened,
    TResult Function(EventConnected value)? connected,
    TResult Function(EventPing value)? ping,
    TResult Function(EventPong value)? pong,
    TResult Function(EventMessage value)? message,
    TResult Function(EventClosed value)? closed,
    TResult Function(EventError value)? error,
    required TResult orElse(),
  }) {
    if (pong != null) {
      return pong(this);
    }
    return orElse();
  }
}

abstract class EventPong extends Event {
  factory EventPong() = _$EventPong;
  EventPong._() : super._();
}

/// @nodoc
abstract class $EventMessageCopyWith<$Res> {
  factory $EventMessageCopyWith(
          EventMessage value, $Res Function(EventMessage) then) =
      _$EventMessageCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventMessageCopyWithImpl<$Res> extends _$EventCopyWithImpl<$Res>
    implements $EventMessageCopyWith<$Res> {
  _$EventMessageCopyWithImpl(
      EventMessage _value, $Res Function(EventMessage) _then)
      : super(_value, (v) => _then(v as EventMessage));

  @override
  EventMessage get _value => super._value as EventMessage;
}

/// @nodoc

class _$EventMessage extends EventMessage {
  _$EventMessage() : super._();

  @override
  String toString() {
    return 'Event.message()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EventMessage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connecting,
    required TResult Function() opened,
    required TResult Function() connected,
    required TResult Function() ping,
    required TResult Function() pong,
    required TResult Function() message,
    required TResult Function() closed,
    required TResult Function() error,
  }) {
    return message();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connecting,
    TResult Function()? opened,
    TResult Function()? connected,
    TResult Function()? ping,
    TResult Function()? pong,
    TResult Function()? message,
    TResult Function()? closed,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventConnecting value) connecting,
    required TResult Function(EventOpened value) opened,
    required TResult Function(EventConnected value) connected,
    required TResult Function(EventPing value) ping,
    required TResult Function(EventPong value) pong,
    required TResult Function(EventMessage value) message,
    required TResult Function(EventClosed value) closed,
    required TResult Function(EventError value) error,
  }) {
    return message(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventConnecting value)? connecting,
    TResult Function(EventOpened value)? opened,
    TResult Function(EventConnected value)? connected,
    TResult Function(EventPing value)? ping,
    TResult Function(EventPong value)? pong,
    TResult Function(EventMessage value)? message,
    TResult Function(EventClosed value)? closed,
    TResult Function(EventError value)? error,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(this);
    }
    return orElse();
  }
}

abstract class EventMessage extends Event {
  factory EventMessage() = _$EventMessage;
  EventMessage._() : super._();
}

/// @nodoc
abstract class $EventClosedCopyWith<$Res> {
  factory $EventClosedCopyWith(
          EventClosed value, $Res Function(EventClosed) then) =
      _$EventClosedCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventClosedCopyWithImpl<$Res> extends _$EventCopyWithImpl<$Res>
    implements $EventClosedCopyWith<$Res> {
  _$EventClosedCopyWithImpl(
      EventClosed _value, $Res Function(EventClosed) _then)
      : super(_value, (v) => _then(v as EventClosed));

  @override
  EventClosed get _value => super._value as EventClosed;
}

/// @nodoc

class _$EventClosed extends EventClosed {
  _$EventClosed() : super._();

  @override
  String toString() {
    return 'Event.closed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EventClosed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connecting,
    required TResult Function() opened,
    required TResult Function() connected,
    required TResult Function() ping,
    required TResult Function() pong,
    required TResult Function() message,
    required TResult Function() closed,
    required TResult Function() error,
  }) {
    return closed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connecting,
    TResult Function()? opened,
    TResult Function()? connected,
    TResult Function()? ping,
    TResult Function()? pong,
    TResult Function()? message,
    TResult Function()? closed,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (closed != null) {
      return closed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventConnecting value) connecting,
    required TResult Function(EventOpened value) opened,
    required TResult Function(EventConnected value) connected,
    required TResult Function(EventPing value) ping,
    required TResult Function(EventPong value) pong,
    required TResult Function(EventMessage value) message,
    required TResult Function(EventClosed value) closed,
    required TResult Function(EventError value) error,
  }) {
    return closed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventConnecting value)? connecting,
    TResult Function(EventOpened value)? opened,
    TResult Function(EventConnected value)? connected,
    TResult Function(EventPing value)? ping,
    TResult Function(EventPong value)? pong,
    TResult Function(EventMessage value)? message,
    TResult Function(EventClosed value)? closed,
    TResult Function(EventError value)? error,
    required TResult orElse(),
  }) {
    if (closed != null) {
      return closed(this);
    }
    return orElse();
  }
}

abstract class EventClosed extends Event {
  factory EventClosed() = _$EventClosed;
  EventClosed._() : super._();
}

/// @nodoc
abstract class $EventErrorCopyWith<$Res> {
  factory $EventErrorCopyWith(
          EventError value, $Res Function(EventError) then) =
      _$EventErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventErrorCopyWithImpl<$Res> extends _$EventCopyWithImpl<$Res>
    implements $EventErrorCopyWith<$Res> {
  _$EventErrorCopyWithImpl(EventError _value, $Res Function(EventError) _then)
      : super(_value, (v) => _then(v as EventError));

  @override
  EventError get _value => super._value as EventError;
}

/// @nodoc

class _$EventError extends EventError {
  _$EventError() : super._();

  @override
  String toString() {
    return 'Event.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EventError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connecting,
    required TResult Function() opened,
    required TResult Function() connected,
    required TResult Function() ping,
    required TResult Function() pong,
    required TResult Function() message,
    required TResult Function() closed,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connecting,
    TResult Function()? opened,
    TResult Function()? connected,
    TResult Function()? ping,
    TResult Function()? pong,
    TResult Function()? message,
    TResult Function()? closed,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventConnecting value) connecting,
    required TResult Function(EventOpened value) opened,
    required TResult Function(EventConnected value) connected,
    required TResult Function(EventPing value) ping,
    required TResult Function(EventPong value) pong,
    required TResult Function(EventMessage value) message,
    required TResult Function(EventClosed value) closed,
    required TResult Function(EventError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventConnecting value)? connecting,
    TResult Function(EventOpened value)? opened,
    TResult Function(EventConnected value)? connected,
    TResult Function(EventPing value)? ping,
    TResult Function(EventPong value)? pong,
    TResult Function(EventMessage value)? message,
    TResult Function(EventClosed value)? closed,
    TResult Function(EventError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class EventError extends Event {
  factory EventError() = _$EventError;
  EventError._() : super._();
}
