// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'parking_camera_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ParkingCameraModel _$ParkingCameraModelFromJson(Map<String, dynamic> json) {
  return _ParkingCameraModel.fromJson(json);
}

/// @nodoc
mixin _$ParkingCameraModel {
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParkingCameraModelCopyWith<ParkingCameraModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParkingCameraModelCopyWith<$Res> {
  factory $ParkingCameraModelCopyWith(
          ParkingCameraModel value, $Res Function(ParkingCameraModel) then) =
      _$ParkingCameraModelCopyWithImpl<$Res, ParkingCameraModel>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$ParkingCameraModelCopyWithImpl<$Res, $Val extends ParkingCameraModel>
    implements $ParkingCameraModelCopyWith<$Res> {
  _$ParkingCameraModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ParkingCameraModelCopyWith<$Res>
    implements $ParkingCameraModelCopyWith<$Res> {
  factory _$$_ParkingCameraModelCopyWith(_$_ParkingCameraModel value,
          $Res Function(_$_ParkingCameraModel) then) =
      __$$_ParkingCameraModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_ParkingCameraModelCopyWithImpl<$Res>
    extends _$ParkingCameraModelCopyWithImpl<$Res, _$_ParkingCameraModel>
    implements _$$_ParkingCameraModelCopyWith<$Res> {
  __$$_ParkingCameraModelCopyWithImpl(
      _$_ParkingCameraModel _value, $Res Function(_$_ParkingCameraModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_ParkingCameraModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ParkingCameraModel implements _ParkingCameraModel {
  const _$_ParkingCameraModel({required this.id});

  factory _$_ParkingCameraModel.fromJson(Map<String, dynamic> json) =>
      _$$_ParkingCameraModelFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'ParkingCameraModel(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParkingCameraModel &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParkingCameraModelCopyWith<_$_ParkingCameraModel> get copyWith =>
      __$$_ParkingCameraModelCopyWithImpl<_$_ParkingCameraModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParkingCameraModelToJson(
      this,
    );
  }
}

abstract class _ParkingCameraModel implements ParkingCameraModel {
  const factory _ParkingCameraModel({required final int id}) =
      _$_ParkingCameraModel;

  factory _ParkingCameraModel.fromJson(Map<String, dynamic> json) =
      _$_ParkingCameraModel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_ParkingCameraModelCopyWith<_$_ParkingCameraModel> get copyWith =>
      throw _privateConstructorUsedError;
}
