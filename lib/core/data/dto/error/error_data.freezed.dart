// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'error_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ErrorData _$ErrorDataFromJson(Map<String, dynamic> json) {
  return _ErrorData.fromJson(json);
}

/// @nodoc
mixin _$ErrorData {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<ErrorMessage> get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorDataCopyWith<ErrorData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorDataCopyWith<$Res> {
  factory $ErrorDataCopyWith(ErrorData value, $Res Function(ErrorData) then) =
      _$ErrorDataCopyWithImpl<$Res, ErrorData>;
  @useResult
  $Res call({int code, String message, List<ErrorMessage> errors});
}

/// @nodoc
class _$ErrorDataCopyWithImpl<$Res, $Val extends ErrorData>
    implements $ErrorDataCopyWith<$Res> {
  _$ErrorDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? errors = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<ErrorMessage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ErrorDataCopyWith<$Res> implements $ErrorDataCopyWith<$Res> {
  factory _$$_ErrorDataCopyWith(
          _$_ErrorData value, $Res Function(_$_ErrorData) then) =
      __$$_ErrorDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, List<ErrorMessage> errors});
}

/// @nodoc
class __$$_ErrorDataCopyWithImpl<$Res>
    extends _$ErrorDataCopyWithImpl<$Res, _$_ErrorData>
    implements _$$_ErrorDataCopyWith<$Res> {
  __$$_ErrorDataCopyWithImpl(
      _$_ErrorData _value, $Res Function(_$_ErrorData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? errors = null,
  }) {
    return _then(_$_ErrorData(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<ErrorMessage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorData implements _ErrorData {
  const _$_ErrorData(
      {required this.code,
      required this.message,
      final List<ErrorMessage> errors = const []})
      : _errors = errors;

  factory _$_ErrorData.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorDataFromJson(json);

  @override
  final int code;
  @override
  final String message;
  final List<ErrorMessage> _errors;
  @override
  @JsonKey()
  List<ErrorMessage> get errors {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  @override
  String toString() {
    return 'ErrorData(code: $code, message: $message, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorData &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, message, const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorDataCopyWith<_$_ErrorData> get copyWith =>
      __$$_ErrorDataCopyWithImpl<_$_ErrorData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorDataToJson(
      this,
    );
  }
}

abstract class _ErrorData implements ErrorData {
  const factory _ErrorData(
      {required final int code,
      required final String message,
      final List<ErrorMessage> errors}) = _$_ErrorData;

  factory _ErrorData.fromJson(Map<String, dynamic> json) =
      _$_ErrorData.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  List<ErrorMessage> get errors;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorDataCopyWith<_$_ErrorData> get copyWith =>
      throw _privateConstructorUsedError;
}
