// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_parking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FavoriteParkingModel _$$_FavoriteParkingModelFromJson(
        Map<String, dynamic> json) =>
    _$_FavoriteParkingModel(
      id: json['id'] as int,
      userUid: json['user_uid'] as String,
      parkingId: json['parking_id'] as int,
      name: json['name'] as String? ?? 'favorite_parking_name',
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      isFree: json['is_free'] as bool? ?? false,
    );

Map<String, dynamic> _$$_FavoriteParkingModelToJson(
        _$_FavoriteParkingModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_uid': instance.userUid,
      'parking_id': instance.parkingId,
      'name': instance.name,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'is_free': instance.isFree,
    };
