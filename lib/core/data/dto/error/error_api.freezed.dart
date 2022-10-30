// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'error_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ErrorApi _$ErrorApiFromJson(Map<String, dynamic> json) {
  return _ErrorApi.fromJson(json);
}

/// @nodoc
mixin _$ErrorApi {
  bool get success => throw _privateConstructorUsedError;
  ErrorData get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorApiCopyWith<ErrorApi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorApiCopyWith<$Res> {
  factory $ErrorApiCopyWith(ErrorApi value, $Res Function(ErrorApi) then) =
      _$ErrorApiCopyWithImpl<$Res, ErrorApi>;
  @useResult
  $Res call({bool success, ErrorData error});

  $ErrorDataCopyWith<$Res> get error;
}

/// @nodoc
class _$ErrorApiCopyWithImpl<$Res, $Val extends ErrorApi>
    implements $ErrorApiCopyWith<$Res> {
  _$ErrorApiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorDataCopyWith<$Res> get error {
    return $ErrorDataCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ErrorApiCopyWith<$Res> implements $ErrorApiCopyWith<$Res> {
  factory _$$_ErrorApiCopyWith(
          _$_ErrorApi value, $Res Function(_$_ErrorApi) then) =
      __$$_ErrorApiCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, ErrorData error});

  @override
  $ErrorDataCopyWith<$Res> get error;
}

/// @nodoc
class __$$_ErrorApiCopyWithImpl<$Res>
    extends _$ErrorApiCopyWithImpl<$Res, _$_ErrorApi>
    implements _$$_ErrorApiCopyWith<$Res> {
  __$$_ErrorApiCopyWithImpl(
      _$_ErrorApi _value, $Res Function(_$_ErrorApi) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? error = null,
  }) {
    return _then(_$_ErrorApi(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorApi implements _ErrorApi {
  const _$_ErrorApi({required this.success, required this.error});

  factory _$_ErrorApi.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorApiFromJson(json);

  @override
  final bool success;
  @override
  final ErrorData error;

  @override
  String toString() {
    return 'ErrorApi(success: $success, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorApi &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorApiCopyWith<_$_ErrorApi> get copyWith =>
      __$$_ErrorApiCopyWithImpl<_$_ErrorApi>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorApiToJson(
      this,
    );
  }
}

abstract class _ErrorApi implements ErrorApi {
  const factory _ErrorApi(
      {required final bool success,
      required final ErrorData error}) = _$_ErrorApi;

  factory _ErrorApi.fromJson(Map<String, dynamic> json) = _$_ErrorApi.fromJson;

  @override
  bool get success;
  @override
  ErrorData get error;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorApiCopyWith<_$_ErrorApi> get copyWith =>
      throw _privateConstructorUsedError;
}
