// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ErrorData _$$_ErrorDataFromJson(Map<String, dynamic> json) => _$_ErrorData(
      code: json['code'] as int,
      message: json['message'] as String,
      errors: (json['errors'] as List<dynamic>?)
              ?.map((e) => ErrorMessage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ErrorDataToJson(_$_ErrorData instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'errors': instance.errors,
    };
