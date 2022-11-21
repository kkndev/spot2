// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parking_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ParkingItemModel _$$_ParkingItemModelFromJson(Map<String, dynamic> json) =>
    _$_ParkingItemModel(
      id: json['id'] as int,
      parkingUid: json['parking_uid'] as String,
      address: json['address'] as String,
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      freePlacesCount: json['free_places_count'] as int,
      occupiedPlacesCount: json['occupied_places_count'] as int,
      unknownPlacesCount: json['unknown_places_count'] as int,
      createdAt: json['created_at'] as String? ?? 'created_at',
      updatedAt: json['updated_at'] as String? ?? 'updated_at',
      favoriteName: json['favorite_name'] as String? ?? 'favorite_name',
      name: json['name'] as String? ?? 'name',
      parkingPlaces: (json['parking_places'] as List<dynamic>?)
              ?.map(
                  (e) => ParkingPlaceModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      cameras: (json['cameras'] as List<dynamic>?)
              ?.map((e) => CameraModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ParkingItemModelToJson(_$_ParkingItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parking_uid': instance.parkingUid,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'free_places_count': instance.freePlacesCount,
      'occupied_places_count': instance.occupiedPlacesCount,
      'unknown_places_count': instance.unknownPlacesCount,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'favorite_name': instance.favoriteName,
      'name': instance.name,
      'parking_places': instance.parkingPlaces,
      'cameras': instance.cameras,
    };
