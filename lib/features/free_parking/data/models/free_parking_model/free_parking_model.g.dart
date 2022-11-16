// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'free_parking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FreeParkingModel _$$_FreeParkingModelFromJson(Map<String, dynamic> json) =>
    _$_FreeParkingModel(
      id: json['id'] as int,
      userId: json['user_id'] as int,
      parkingId: json['parking_id'] as int,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$$_FreeParkingModelToJson(_$_FreeParkingModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'parking_id': instance.parkingId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
