// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parking_place_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ParkingPlaceModel _$$_ParkingPlaceModelFromJson(Map<String, dynamic> json) =>
    _$_ParkingPlaceModel(
      id: json['id'] as int,
      latitude: json['latitude'] as String? ?? '0',
      longitude: json['longitude'] as String? ?? '0',
      angle: json['angle'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$_ParkingPlaceModelToJson(
        _$_ParkingPlaceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'angle': instance.angle,
      'status': instance.status,
    };
