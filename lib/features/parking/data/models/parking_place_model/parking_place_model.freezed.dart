// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'parking_place_model.dart';

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
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'parking_place_uid')
  String get parkingPlaceUid => throw _privateConstructorUsedError;
  @JsonKey(name: 'parking_id')
  int get parkingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'camera_id')
  int get cameraId => throw _privateConstructorUsedError;
  @JsonKey(name: 'latitude')
  double get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  double get longitude => throw _privateConstructorUsedError;
  double get angle => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_pixel_x_coord')
  double get startPixelXCoord => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_pixel_y_coord')
  double get startPixelYCoord => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_pixel_x_coord')
  double get endPixelXCoord => throw _privateConstructorUsedError;
  @JsonKey(name: 'ens_pixel_y_coord')
  double get endPixelYCoord => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;

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
  $Res call(
      {int id,
      @JsonKey(name: 'parking_place_uid') String parkingPlaceUid,
      @JsonKey(name: 'parking_id') int parkingId,
      @JsonKey(name: 'camera_id') int cameraId,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude,
      double angle,
      @JsonKey(name: 'start_pixel_x_coord') double startPixelXCoord,
      @JsonKey(name: 'start_pixel_y_coord') double startPixelYCoord,
      @JsonKey(name: 'end_pixel_x_coord') double endPixelXCoord,
      @JsonKey(name: 'ens_pixel_y_coord') double endPixelYCoord,
      String status,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
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
    Object? id = null,
    Object? parkingPlaceUid = null,
    Object? parkingId = null,
    Object? cameraId = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? angle = null,
    Object? startPixelXCoord = null,
    Object? startPixelYCoord = null,
    Object? endPixelXCoord = null,
    Object? endPixelYCoord = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      parkingPlaceUid: null == parkingPlaceUid
          ? _value.parkingPlaceUid
          : parkingPlaceUid // ignore: cast_nullable_to_non_nullable
              as String,
      parkingId: null == parkingId
          ? _value.parkingId
          : parkingId // ignore: cast_nullable_to_non_nullable
              as int,
      cameraId: null == cameraId
          ? _value.cameraId
          : cameraId // ignore: cast_nullable_to_non_nullable
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
      startPixelXCoord: null == startPixelXCoord
          ? _value.startPixelXCoord
          : startPixelXCoord // ignore: cast_nullable_to_non_nullable
              as double,
      startPixelYCoord: null == startPixelYCoord
          ? _value.startPixelYCoord
          : startPixelYCoord // ignore: cast_nullable_to_non_nullable
              as double,
      endPixelXCoord: null == endPixelXCoord
          ? _value.endPixelXCoord
          : endPixelXCoord // ignore: cast_nullable_to_non_nullable
              as double,
      endPixelYCoord: null == endPixelYCoord
          ? _value.endPixelYCoord
          : endPixelYCoord // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
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
  $Res call(
      {int id,
      @JsonKey(name: 'parking_place_uid') String parkingPlaceUid,
      @JsonKey(name: 'parking_id') int parkingId,
      @JsonKey(name: 'camera_id') int cameraId,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude,
      double angle,
      @JsonKey(name: 'start_pixel_x_coord') double startPixelXCoord,
      @JsonKey(name: 'start_pixel_y_coord') double startPixelYCoord,
      @JsonKey(name: 'end_pixel_x_coord') double endPixelXCoord,
      @JsonKey(name: 'ens_pixel_y_coord') double endPixelYCoord,
      String status,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
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
    Object? id = null,
    Object? parkingPlaceUid = null,
    Object? parkingId = null,
    Object? cameraId = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? angle = null,
    Object? startPixelXCoord = null,
    Object? startPixelYCoord = null,
    Object? endPixelXCoord = null,
    Object? endPixelYCoord = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_ParkingModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      parkingPlaceUid: null == parkingPlaceUid
          ? _value.parkingPlaceUid
          : parkingPlaceUid // ignore: cast_nullable_to_non_nullable
              as String,
      parkingId: null == parkingId
          ? _value.parkingId
          : parkingId // ignore: cast_nullable_to_non_nullable
              as int,
      cameraId: null == cameraId
          ? _value.cameraId
          : cameraId // ignore: cast_nullable_to_non_nullable
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
      startPixelXCoord: null == startPixelXCoord
          ? _value.startPixelXCoord
          : startPixelXCoord // ignore: cast_nullable_to_non_nullable
              as double,
      startPixelYCoord: null == startPixelYCoord
          ? _value.startPixelYCoord
          : startPixelYCoord // ignore: cast_nullable_to_non_nullable
              as double,
      endPixelXCoord: null == endPixelXCoord
          ? _value.endPixelXCoord
          : endPixelXCoord // ignore: cast_nullable_to_non_nullable
              as double,
      endPixelYCoord: null == endPixelYCoord
          ? _value.endPixelYCoord
          : endPixelYCoord // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ParkingModel implements _ParkingModel {
  const _$_ParkingModel(
      {required this.id,
      @JsonKey(name: 'parking_place_uid')
          this.parkingPlaceUid = 'parking_place_uid',
      @JsonKey(name: 'parking_id')
          this.parkingId = 0,
      @JsonKey(name: 'camera_id')
          this.cameraId = 0,
      @JsonKey(name: 'latitude')
          this.latitude = 0,
      @JsonKey(name: 'longitude')
          this.longitude = 0,
      required this.angle,
      @JsonKey(name: 'start_pixel_x_coord')
          this.startPixelXCoord = 0,
      @JsonKey(name: 'start_pixel_y_coord')
          this.startPixelYCoord = 0,
      @JsonKey(name: 'end_pixel_x_coord')
          this.endPixelXCoord = 0,
      @JsonKey(name: 'ens_pixel_y_coord')
          this.endPixelYCoord = 0,
      required this.status,
      @JsonKey(name: 'created_at')
          this.createdAt = 'created_at',
      @JsonKey(name: 'updated_at')
          this.updatedAt = 'updated_at'});

  factory _$_ParkingModel.fromJson(Map<String, dynamic> json) =>
      _$$_ParkingModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'parking_place_uid')
  final String parkingPlaceUid;
  @override
  @JsonKey(name: 'parking_id')
  final int parkingId;
  @override
  @JsonKey(name: 'camera_id')
  final int cameraId;
  @override
  @JsonKey(name: 'latitude')
  final double latitude;
  @override
  @JsonKey(name: 'longitude')
  final double longitude;
  @override
  final double angle;
  @override
  @JsonKey(name: 'start_pixel_x_coord')
  final double startPixelXCoord;
  @override
  @JsonKey(name: 'start_pixel_y_coord')
  final double startPixelYCoord;
  @override
  @JsonKey(name: 'end_pixel_x_coord')
  final double endPixelXCoord;
  @override
  @JsonKey(name: 'ens_pixel_y_coord')
  final double endPixelYCoord;
  @override
  final String status;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  @override
  String toString() {
    return 'ParkingModel(id: $id, parkingPlaceUid: $parkingPlaceUid, parkingId: $parkingId, cameraId: $cameraId, latitude: $latitude, longitude: $longitude, angle: $angle, startPixelXCoord: $startPixelXCoord, startPixelYCoord: $startPixelYCoord, endPixelXCoord: $endPixelXCoord, endPixelYCoord: $endPixelYCoord, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParkingModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parkingPlaceUid, parkingPlaceUid) ||
                other.parkingPlaceUid == parkingPlaceUid) &&
            (identical(other.parkingId, parkingId) ||
                other.parkingId == parkingId) &&
            (identical(other.cameraId, cameraId) ||
                other.cameraId == cameraId) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.angle, angle) || other.angle == angle) &&
            (identical(other.startPixelXCoord, startPixelXCoord) ||
                other.startPixelXCoord == startPixelXCoord) &&
            (identical(other.startPixelYCoord, startPixelYCoord) ||
                other.startPixelYCoord == startPixelYCoord) &&
            (identical(other.endPixelXCoord, endPixelXCoord) ||
                other.endPixelXCoord == endPixelXCoord) &&
            (identical(other.endPixelYCoord, endPixelYCoord) ||
                other.endPixelYCoord == endPixelYCoord) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      parkingPlaceUid,
      parkingId,
      cameraId,
      latitude,
      longitude,
      angle,
      startPixelXCoord,
      startPixelYCoord,
      endPixelXCoord,
      endPixelYCoord,
      status,
      createdAt,
      updatedAt);

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
      {required final int id,
      @JsonKey(name: 'parking_place_uid') final String parkingPlaceUid,
      @JsonKey(name: 'parking_id') final int parkingId,
      @JsonKey(name: 'camera_id') final int cameraId,
      @JsonKey(name: 'latitude') final double latitude,
      @JsonKey(name: 'longitude') final double longitude,
      required final double angle,
      @JsonKey(name: 'start_pixel_x_coord') final double startPixelXCoord,
      @JsonKey(name: 'start_pixel_y_coord') final double startPixelYCoord,
      @JsonKey(name: 'end_pixel_x_coord') final double endPixelXCoord,
      @JsonKey(name: 'ens_pixel_y_coord') final double endPixelYCoord,
      required final String status,
      @JsonKey(name: 'created_at') final String createdAt,
      @JsonKey(name: 'updated_at') final String updatedAt}) = _$_ParkingModel;

  factory _ParkingModel.fromJson(Map<String, dynamic> json) =
      _$_ParkingModel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'parking_place_uid')
  String get parkingPlaceUid;
  @override
  @JsonKey(name: 'parking_id')
  int get parkingId;
  @override
  @JsonKey(name: 'camera_id')
  int get cameraId;
  @override
  @JsonKey(name: 'latitude')
  double get latitude;
  @override
  @JsonKey(name: 'longitude')
  double get longitude;
  @override
  double get angle;
  @override
  @JsonKey(name: 'start_pixel_x_coord')
  double get startPixelXCoord;
  @override
  @JsonKey(name: 'start_pixel_y_coord')
  double get startPixelYCoord;
  @override
  @JsonKey(name: 'end_pixel_x_coord')
  double get endPixelXCoord;
  @override
  @JsonKey(name: 'ens_pixel_y_coord')
  double get endPixelYCoord;
  @override
  String get status;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ParkingModelCopyWith<_$_ParkingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
