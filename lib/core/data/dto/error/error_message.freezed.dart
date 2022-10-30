// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'error_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ErrorMessage _$ErrorMessageFromJson(Map<String, dynamic> json) {
  return _ErrorMessage.fromJson(json);
}

/// @nodoc
mixin _$ErrorMessage {
  String get property => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorMessageCopyWith<ErrorMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorMessageCopyWith<$Res> {
  factory $ErrorMessageCopyWith(
          ErrorMessage value, $Res Function(ErrorMessage) then) =
      _$ErrorMessageCopyWithImpl<$Res, ErrorMessage>;
  @useResult
  $Res call({String property, String message});
}

/// @nodoc
class _$ErrorMessageCopyWithImpl<$Res, $Val extends ErrorMessage>
    implements $ErrorMessageCopyWith<$Res> {
  _$ErrorMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? property = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      property: null == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ErrorMessageCopyWith<$Res>
    implements $ErrorMessageCopyWith<$Res> {
  factory _$$_ErrorMessageCopyWith(
          _$_ErrorMessage value, $Res Function(_$_ErrorMessage) then) =
      __$$_ErrorMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String property, String message});
}

/// @nodoc
class __$$_ErrorMessageCopyWithImpl<$Res>
    extends _$ErrorMessageCopyWithImpl<$Res, _$_ErrorMessage>
    implements _$$_ErrorMessageCopyWith<$Res> {
  __$$_ErrorMessageCopyWithImpl(
      _$_ErrorMessage _value, $Res Function(_$_ErrorMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? property = null,
    Object? message = null,
  }) {
    return _then(_$_ErrorMessage(
      property: null == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorMessage implements _ErrorMessage {
  const _$_ErrorMessage({required this.property, required this.message});

  factory _$_ErrorMessage.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorMessageFromJson(json);

  @override
  final String property;
  @override
  final String message;

  @override
  String toString() {
    return 'ErrorMessage(property: $property, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorMessage &&
            (identical(other.property, property) ||
                other.property == property) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, property, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorMessageCopyWith<_$_ErrorMessage> get copyWith =>
      __$$_ErrorMessageCopyWithImpl<_$_ErrorMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorMessageToJson(
      this,
    );
  }
}

abstract class _ErrorMessage implements ErrorMessage {
  const factory _ErrorMessage(
      {required final String property,
      required final String message}) = _$_ErrorMessage;

  factory _ErrorMessage.fromJson(Map<String, dynamic> json) =
      _$_ErrorMessage.fromJson;

  @override
  String get property;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorMessageCopyWith<_$_ErrorMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
