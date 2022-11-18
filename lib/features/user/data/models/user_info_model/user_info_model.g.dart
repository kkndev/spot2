// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserInfoModel _$$_UserInfoModelFromJson(Map<String, dynamic> json) =>
    _$_UserInfoModel(
      id: json['id'] as int,
      isAutoPay: json['is_auto_pay'] as bool? ?? false,
      nextPaymentDate:
          json['next_payment_date'] as String? ?? 'next_payment_date',
      nextSubscriptionId:
          json['next_subscription_id'] as String? ?? 'next_subscription_id',
      paymentSource: json['payment_source'] as String? ?? 'payment_source',
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      status: json['status'] as String? ?? '',
      subscriptionCost:
          json['subscription_cost'] as String? ?? 'subscription_cost',
      subscriptionName:
          json['subscription_name'] as String? ?? 'subscription_name',
      subscriptionStatus:
          json['subscription_status'] as String? ?? 'subscription_status',
      wasSubscribed: json['was_subscribed'] as bool? ?? false,
      createdAt: json['created_at'] as String? ?? 'created_at',
      updatedAt: json['updated_at'] as String? ?? 'updated_at',
    );

Map<String, dynamic> _$$_UserInfoModelToJson(_$_UserInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_auto_pay': instance.isAutoPay,
      'next_payment_date': instance.nextPaymentDate,
      'next_subscription_id': instance.nextSubscriptionId,
      'payment_source': instance.paymentSource,
      'roles': instance.roles,
      'status': instance.status,
      'subscription_cost': instance.subscriptionCost,
      'subscription_name': instance.subscriptionName,
      'subscription_status': instance.subscriptionStatus,
      'was_subscribed': instance.wasSubscribed,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
