// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ErrorApi _$$_ErrorApiFromJson(Map<String, dynamic> json) => _$_ErrorApi(
      success: json['success'] as bool,
      error: ErrorData.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ErrorApiToJson(_$_ErrorApi instance) =>
    <String, dynamic>{
      'success': instance.success,
      'error': instance.error,
    };
