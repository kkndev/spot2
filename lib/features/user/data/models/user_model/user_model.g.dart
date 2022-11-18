// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as int,
      uid: json['uid'] as String,
      name: json['name'] as String? ?? 'name',
      surname: json['surname'] as String? ?? 'surname',
      sex: json['sex'] as String? ?? 'sex',
      dateOfBirth: json['date_of_birth'] as String? ?? 'date_of_birth',
      carBrand: json['car_brand'] as String? ?? 'car_brand',
      carModel: json['car_model'] as String? ?? 'car_model',
      drivingLicenseObtainingDate:
          json['driving_license_obtaining_date'] as String? ??
              'driving_license_obtaining_date',
      deviceToken: json['device_token'] as String? ?? 'device_token',
      createdAt: json['created_at'] as String? ?? 'created_at',
      updatedAt: json['updated_at'] as String? ?? 'updated_at',
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'name': instance.name,
      'surname': instance.surname,
      'sex': instance.sex,
      'date_of_birth': instance.dateOfBirth,
      'car_brand': instance.carBrand,
      'car_model': instance.carModel,
      'driving_license_obtaining_date': instance.drivingLicenseObtainingDate,
      'device_token': instance.deviceToken,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
