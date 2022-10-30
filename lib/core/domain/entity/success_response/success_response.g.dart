// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'success_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SuccessResponse<T> _$$_SuccessResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$_SuccessResponse<T>(
      success: json['success'] as bool,
      data: fromJsonT(json['data']),
    );

Map<String, dynamic> _$$_SuccessResponseToJson<T>(
  _$_SuccessResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'success': instance.success,
      'data': toJsonT(instance.data),
    };
