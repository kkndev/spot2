// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parking_place_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ParkingPlaceModel _$$_ParkingPlaceModelFromJson(Map<String, dynamic> json) =>
    _$_ParkingPlaceModel(
      id: json['id'] as int,
      parkingPlaceUid:
          json['parking_place_uid'] as String? ?? 'parking_place_uid',
      parkingId: json['parking_id'] as int? ?? 0,
      cameraId: json['camera_id'] as int? ?? 0,
      latitude: (json['latitude'] as num?)?.toDouble() ?? 0,
      longitude: (json['longitude'] as num?)?.toDouble() ?? 0,
      angle: (json['angle'] as num).toDouble(),
      startPixelXCoord: (json['start_pixel_x_coord'] as num?)?.toDouble() ?? 0,
      startPixelYCoord: (json['start_pixel_y_coord'] as num?)?.toDouble() ?? 0,
      endPixelXCoord: (json['end_pixel_x_coord'] as num?)?.toDouble() ?? 0,
      endPixelYCoord: (json['ens_pixel_y_coord'] as num?)?.toDouble() ?? 0,
      status: json['status'] as String,
      createdAt: json['created_at'] as String? ?? 'created_at',
      updatedAt: json['updated_at'] as String? ?? 'updated_at',
    );

Map<String, dynamic> _$$_ParkingPlaceModelToJson(
        _$_ParkingPlaceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parking_place_uid': instance.parkingPlaceUid,
      'parking_id': instance.parkingId,
      'camera_id': instance.cameraId,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'angle': instance.angle,
      'start_pixel_x_coord': instance.startPixelXCoord,
      'start_pixel_y_coord': instance.startPixelYCoord,
      'end_pixel_x_coord': instance.endPixelXCoord,
      'ens_pixel_y_coord': instance.endPixelYCoord,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
