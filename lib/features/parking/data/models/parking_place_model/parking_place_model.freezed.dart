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

ParkingPlaceModel _$ParkingPlaceModelFromJson(Map<String, dynamic> json) {
  return _ParkingPlaceModel.fromJson(json);
}

/// @nodoc
mixin _$ParkingPlaceModel {
  int get id =>
      throw _privateConstructorUsedError; // @Default('parking_place_uid')
// @JsonKey(name: 'parking_place_uid')
//     String parkingPlaceUid,
// @Default(0) @JsonKey(name: 'parking_id') int parkingId,
// @Default(0) @JsonKey(name: 'camera_id') int cameraId,
  @JsonKey(name: 'latitude')
  String get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  String get longitude => throw _privateConstructorUsedError;
  String get angle =>
      throw _privateConstructorUsedError; // @Default(0) @JsonKey(name: 'start_pixel_x_coord') double startPixelXCoord,
// @Default(0) @JsonKey(name: 'start_pixel_y_coord') double startPixelYCoord,
// @Default(0) @JsonKey(name: 'end_pixel_x_coord') double endPixelXCoord,
// @Default(0) @JsonKey(name: 'ens_pixel_y_coord') double endPixelYCoord,
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParkingPlaceModelCopyWith<ParkingPlaceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParkingPlaceModelCopyWith<$Res> {
  factory $ParkingPlaceModelCopyWith(
          ParkingPlaceModel value, $Res Function(ParkingPlaceModel) then) =
      _$ParkingPlaceModelCopyWithImpl<$Res, ParkingPlaceModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'latitude') String latitude,
      @JsonKey(name: 'longitude') String longitude,
      String angle,
      String status});
}

/// @nodoc
class _$ParkingPlaceModelCopyWithImpl<$Res, $Val extends ParkingPlaceModel>
    implements $ParkingPlaceModelCopyWith<$Res> {
  _$ParkingPlaceModelCopyWithImpl(this._value, this._then);

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
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      angle: null == angle
          ? _value.angle
          : angle // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ParkingPlaceModelCopyWith<$Res>
    implements $ParkingPlaceModelCopyWith<$Res> {
  factory _$$_ParkingPlaceModelCopyWith(_$_ParkingPlaceModel value,
          $Res Function(_$_ParkingPlaceModel) then) =
      __$$_ParkingPlaceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'latitude') String latitude,
      @JsonKey(name: 'longitude') String longitude,
      String angle,
      String status});
}

/// @nodoc
class __$$_ParkingPlaceModelCopyWithImpl<$Res>
    extends _$ParkingPlaceModelCopyWithImpl<$Res, _$_ParkingPlaceModel>
    implements _$$_ParkingPlaceModelCopyWith<$Res> {
  __$$_ParkingPlaceModelCopyWithImpl(
      _$_ParkingPlaceModel _value, $Res Function(_$_ParkingPlaceModel) _then)
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
    return _then(_$_ParkingPlaceModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      angle: null == angle
          ? _value.angle
          : angle // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ParkingPlaceModel implements _ParkingPlaceModel {
  const _$_ParkingPlaceModel(
      {required this.id,
      @JsonKey(name: 'latitude') this.latitude = '0',
      @JsonKey(name: 'longitude') this.longitude = '0',
      required this.angle,
      required this.status});

  factory _$_ParkingPlaceModel.fromJson(Map<String, dynamic> json) =>
      _$$_ParkingPlaceModelFromJson(json);

  @override
  final int id;
// @Default('parking_place_uid')
// @JsonKey(name: 'parking_place_uid')
//     String parkingPlaceUid,
// @Default(0) @JsonKey(name: 'parking_id') int parkingId,
// @Default(0) @JsonKey(name: 'camera_id') int cameraId,
  @override
  @JsonKey(name: 'latitude')
  final String latitude;
  @override
  @JsonKey(name: 'longitude')
  final String longitude;
  @override
  final String angle;
// @Default(0) @JsonKey(name: 'start_pixel_x_coord') double startPixelXCoord,
// @Default(0) @JsonKey(name: 'start_pixel_y_coord') double startPixelYCoord,
// @Default(0) @JsonKey(name: 'end_pixel_x_coord') double endPixelXCoord,
// @Default(0) @JsonKey(name: 'ens_pixel_y_coord') double endPixelYCoord,
  @override
  final String status;

  @override
  String toString() {
    return 'ParkingPlaceModel(id: $id, latitude: $latitude, longitude: $longitude, angle: $angle, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParkingPlaceModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.angle, angle) || other.angle == angle) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, latitude, longitude, angle, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParkingPlaceModelCopyWith<_$_ParkingPlaceModel> get copyWith =>
      __$$_ParkingPlaceModelCopyWithImpl<_$_ParkingPlaceModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParkingPlaceModelToJson(
      this,
    );
  }
}

abstract class _ParkingPlaceModel implements ParkingPlaceModel {
  const factory _ParkingPlaceModel(
      {required final int id,
      @JsonKey(name: 'latitude') final String latitude,
      @JsonKey(name: 'longitude') final String longitude,
      required final String angle,
      required final String status}) = _$_ParkingPlaceModel;

  factory _ParkingPlaceModel.fromJson(Map<String, dynamic> json) =
      _$_ParkingPlaceModel.fromJson;

  @override
  int get id;
  @override // @Default('parking_place_uid')
// @JsonKey(name: 'parking_place_uid')
//     String parkingPlaceUid,
// @Default(0) @JsonKey(name: 'parking_id') int parkingId,
// @Default(0) @JsonKey(name: 'camera_id') int cameraId,
  @JsonKey(name: 'latitude')
  String get latitude;
  @override
  @JsonKey(name: 'longitude')
  String get longitude;
  @override
  String get angle;
  @override // @Default(0) @JsonKey(name: 'start_pixel_x_coord') double startPixelXCoord,
// @Default(0) @JsonKey(name: 'start_pixel_y_coord') double startPixelYCoord,
// @Default(0) @JsonKey(name: 'end_pixel_x_coord') double endPixelXCoord,
// @Default(0) @JsonKey(name: 'ens_pixel_y_coord') double endPixelYCoord,
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$_ParkingPlaceModelCopyWith<_$_ParkingPlaceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
