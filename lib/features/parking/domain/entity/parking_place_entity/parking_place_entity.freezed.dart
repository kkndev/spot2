// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'parking_place_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ParkingPlaceEntity {
  int get id =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'parking_place_uid') required String parkingPlaceUid,
// @JsonKey(name: 'parking_id') required int parkingId,
// @JsonKey(name: 'camera_id') required int cameraId,
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  double get angle => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParkingPlaceEntityCopyWith<ParkingPlaceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParkingPlaceEntityCopyWith<$Res> {
  factory $ParkingPlaceEntityCopyWith(
          ParkingPlaceEntity value, $Res Function(ParkingPlaceEntity) then) =
      _$ParkingPlaceEntityCopyWithImpl<$Res, ParkingPlaceEntity>;
  @useResult
  $Res call(
      {int id, double latitude, double longitude, double angle, String status});
}

/// @nodoc
class _$ParkingPlaceEntityCopyWithImpl<$Res, $Val extends ParkingPlaceEntity>
    implements $ParkingPlaceEntityCopyWith<$Res> {
  _$ParkingPlaceEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? angle = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      angle: null == angle
          ? _value.angle
          : angle // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ParkingPlaceEntityCopyWith<$Res>
    implements $ParkingPlaceEntityCopyWith<$Res> {
  factory _$$_ParkingPlaceEntityCopyWith(_$_ParkingPlaceEntity value,
          $Res Function(_$_ParkingPlaceEntity) then) =
      __$$_ParkingPlaceEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, double latitude, double longitude, double angle, String status});
}

/// @nodoc
class __$$_ParkingPlaceEntityCopyWithImpl<$Res>
    extends _$ParkingPlaceEntityCopyWithImpl<$Res, _$_ParkingPlaceEntity>
    implements _$$_ParkingPlaceEntityCopyWith<$Res> {
  __$$_ParkingPlaceEntityCopyWithImpl(
      _$_ParkingPlaceEntity _value, $Res Function(_$_ParkingPlaceEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? angle = null,
    Object? status = null,
  }) {
    return _then(_$_ParkingPlaceEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      angle: null == angle
          ? _value.angle
          : angle // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ParkingPlaceEntity implements _ParkingPlaceEntity {
  const _$_ParkingPlaceEntity(
      {required this.id,
      required this.latitude,
      required this.longitude,
      required this.angle,
      required this.status});

  @override
  final int id;
// @JsonKey(name: 'parking_place_uid') required String parkingPlaceUid,
// @JsonKey(name: 'parking_id') required int parkingId,
// @JsonKey(name: 'camera_id') required int cameraId,
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final double angle;
  @override
  final String status;

  @override
  String toString() {
    return 'ParkingPlaceEntity(id: $id, latitude: $latitude, longitude: $longitude, angle: $angle, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParkingPlaceEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.angle, angle) || other.angle == angle) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, latitude, longitude, angle, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParkingPlaceEntityCopyWith<_$_ParkingPlaceEntity> get copyWith =>
      __$$_ParkingPlaceEntityCopyWithImpl<_$_ParkingPlaceEntity>(
          this, _$identity);
}

abstract class _ParkingPlaceEntity implements ParkingPlaceEntity {
  const factory _ParkingPlaceEntity(
      {required final int id,
      required final double latitude,
      required final double longitude,
      required final double angle,
      required final String status}) = _$_ParkingPlaceEntity;

  @override
  int get id;
  @override // @JsonKey(name: 'parking_place_uid') required String parkingPlaceUid,
// @JsonKey(name: 'parking_id') required int parkingId,
// @JsonKey(name: 'camera_id') required int cameraId,
  double get latitude;
  @override
  double get longitude;
  @override
  double get angle;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$_ParkingPlaceEntityCopyWith<_$_ParkingPlaceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
