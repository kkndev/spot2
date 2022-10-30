// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'success_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SuccessData _$SuccessDataFromJson(Map<String, dynamic> json) {
  return _SuccessData.fromJson(json);
}

/// @nodoc
mixin _$SuccessData {
  bool get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuccessDataCopyWith<SuccessData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessDataCopyWith<$Res> {
  factory $SuccessDataCopyWith(
          SuccessData value, $Res Function(SuccessData) then) =
      _$SuccessDataCopyWithImpl<$Res, SuccessData>;
  @useResult
  $Res call({bool result});
}

/// @nodoc
class _$SuccessDataCopyWithImpl<$Res, $Val extends SuccessData>
    implements $SuccessDataCopyWith<$Res> {
  _$SuccessDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SuccessDataCopyWith<$Res>
    implements $SuccessDataCopyWith<$Res> {
  factory _$$_SuccessDataCopyWith(
          _$_SuccessData value, $Res Function(_$_SuccessData) then) =
      __$$_SuccessDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool result});
}

/// @nodoc
class __$$_SuccessDataCopyWithImpl<$Res>
    extends _$SuccessDataCopyWithImpl<$Res, _$_SuccessData>
    implements _$$_SuccessDataCopyWith<$Res> {
  __$$_SuccessDataCopyWithImpl(
      _$_SuccessData _value, $Res Function(_$_SuccessData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$_SuccessData(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SuccessData implements _SuccessData {
  const _$_SuccessData({required this.result});

  factory _$_SuccessData.fromJson(Map<String, dynamic> json) =>
      _$$_SuccessDataFromJson(json);

  @override
  final bool result;

  @override
  String toString() {
    return 'SuccessData(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessData &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessDataCopyWith<_$_SuccessData> get copyWith =>
      __$$_SuccessDataCopyWithImpl<_$_SuccessData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SuccessDataToJson(
      this,
    );
  }
}

abstract class _SuccessData implements SuccessData {
  const factory _SuccessData({required final bool result}) = _$_SuccessData;

  factory _SuccessData.fromJson(Map<String, dynamic> json) =
      _$_SuccessData.fromJson;

  @override
  bool get result;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessDataCopyWith<_$_SuccessData> get copyWith =>
      throw _privateConstructorUsedError;
}
