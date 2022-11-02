// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'parking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ParkingModel _$ParkingModelFromJson(Map<String, dynamic> json) {
  return _ParkingModel.fromJson(json);
}

/// @nodoc
mixin _$ParkingModel {
  int get val => throw _privateConstructorUsedError;
  String get cur => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParkingModelCopyWith<ParkingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParkingModelCopyWith<$Res> {
  factory $ParkingModelCopyWith(
          ParkingModel value, $Res Function(ParkingModel) then) =
      _$ParkingModelCopyWithImpl<$Res, ParkingModel>;
  @useResult
  $Res call({int val, String cur});
}

/// @nodoc
class _$ParkingModelCopyWithImpl<$Res, $Val extends ParkingModel>
    implements $ParkingModelCopyWith<$Res> {
  _$ParkingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? val = null,
    Object? cur = null,
  }) {
    return _then(_value.copyWith(
      val: null == val
          ? _value.val
          : val // ignore: cast_nullable_to_non_nullable
              as int,
      cur: null == cur
          ? _value.cur
          : cur // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ParkingModelCopyWith<$Res>
    implements $ParkingModelCopyWith<$Res> {
  factory _$$_ParkingModelCopyWith(
          _$_ParkingModel value, $Res Function(_$_ParkingModel) then) =
      __$$_ParkingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int val, String cur});
}

/// @nodoc
class __$$_ParkingModelCopyWithImpl<$Res>
    extends _$ParkingModelCopyWithImpl<$Res, _$_ParkingModel>
    implements _$$_ParkingModelCopyWith<$Res> {
  __$$_ParkingModelCopyWithImpl(
      _$_ParkingModel _value, $Res Function(_$_ParkingModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? val = null,
    Object? cur = null,
  }) {
    return _then(_$_ParkingModel(
      val: null == val
          ? _value.val
          : val // ignore: cast_nullable_to_non_nullable
              as int,
      cur: null == cur
          ? _value.cur
          : cur // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ParkingModel implements _ParkingModel {
  const _$_ParkingModel({required this.val, required this.cur});

  factory _$_ParkingModel.fromJson(Map<String, dynamic> json) =>
      _$$_ParkingModelFromJson(json);

  @override
  final int val;
  @override
  final String cur;

  @override
  String toString() {
    return 'ParkingModel(val: $val, cur: $cur)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParkingModel &&
            (identical(other.val, val) || other.val == val) &&
            (identical(other.cur, cur) || other.cur == cur));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, val, cur);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParkingModelCopyWith<_$_ParkingModel> get copyWith =>
      __$$_ParkingModelCopyWithImpl<_$_ParkingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParkingModelToJson(
      this,
    );
  }
}

abstract class _ParkingModel implements ParkingModel {
  const factory _ParkingModel(
      {required final int val, required final String cur}) = _$_ParkingModel;

  factory _ParkingModel.fromJson(Map<String, dynamic> json) =
      _$_ParkingModel.fromJson;

  @override
  int get val;
  @override
  String get cur;
  @override
  @JsonKey(ignore: true)
  _$$_ParkingModelCopyWith<_$_ParkingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
