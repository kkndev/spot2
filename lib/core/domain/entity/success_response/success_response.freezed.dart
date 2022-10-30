// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'success_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SuccessResponse<T> _$SuccessResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _SuccessResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$SuccessResponse<T> {
  bool get success => throw _privateConstructorUsedError;
  T get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuccessResponseCopyWith<T, SuccessResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessResponseCopyWith<T, $Res> {
  factory $SuccessResponseCopyWith(
          SuccessResponse<T> value, $Res Function(SuccessResponse<T>) then) =
      _$SuccessResponseCopyWithImpl<T, $Res, SuccessResponse<T>>;
  @useResult
  $Res call({bool success, T data});
}

/// @nodoc
class _$SuccessResponseCopyWithImpl<T, $Res, $Val extends SuccessResponse<T>>
    implements $SuccessResponseCopyWith<T, $Res> {
  _$SuccessResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SuccessResponseCopyWith<T, $Res>
    implements $SuccessResponseCopyWith<T, $Res> {
  factory _$$_SuccessResponseCopyWith(_$_SuccessResponse<T> value,
          $Res Function(_$_SuccessResponse<T>) then) =
      __$$_SuccessResponseCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({bool success, T data});
}

/// @nodoc
class __$$_SuccessResponseCopyWithImpl<T, $Res>
    extends _$SuccessResponseCopyWithImpl<T, $Res, _$_SuccessResponse<T>>
    implements _$$_SuccessResponseCopyWith<T, $Res> {
  __$$_SuccessResponseCopyWithImpl(
      _$_SuccessResponse<T> _value, $Res Function(_$_SuccessResponse<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$_SuccessResponse<T>(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$_SuccessResponse<T> implements _SuccessResponse<T> {
  const _$_SuccessResponse({required this.success, required this.data});

  factory _$_SuccessResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$_SuccessResponseFromJson(json, fromJsonT);

  @override
  final bool success;
  @override
  final T data;

  @override
  String toString() {
    return 'SuccessResponse<$T>(success: $success, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessResponse<T> &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessResponseCopyWith<T, _$_SuccessResponse<T>> get copyWith =>
      __$$_SuccessResponseCopyWithImpl<T, _$_SuccessResponse<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$_SuccessResponseToJson<T>(this, toJsonT);
  }
}

abstract class _SuccessResponse<T> implements SuccessResponse<T> {
  const factory _SuccessResponse(
      {required final bool success,
      required final T data}) = _$_SuccessResponse<T>;

  factory _SuccessResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$_SuccessResponse<T>.fromJson;

  @override
  bool get success;
  @override
  T get data;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessResponseCopyWith<T, _$_SuccessResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
