import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info_model.freezed.dart';
part 'user_info_model.g.dart';

@freezed
class UserInfoModel with _$UserInfoModel {
  const factory UserInfoModel({
    required int id,
    @Default(false) @JsonKey(name: 'is_auto_pay') bool isAutoPay,
    @Default('next_payment_date')
    @JsonKey(name: 'next_payment_date')
        String nextPaymentDate,
    @Default('next_subscription_id')
    @JsonKey(name: 'next_subscription_id')
        String nextSubscriptionId,
    @Default('payment_source')
    @JsonKey(name: 'payment_source')
        String paymentSource,
    @Default([]) List<String> roles,
    @Default('') String status,
    @Default('subscription_cost')
    @JsonKey(name: 'subscription_cost')
        String subscriptionCost,
    @Default('subscription_name')
    @JsonKey(name: 'subscription_name')
        String subscriptionName,
    @Default('subscription_status')
    @JsonKey(name: 'subscription_status')
        String subscriptionStatus,
    @Default(false) @JsonKey(name: 'was_subscribed') bool wasSubscribed,
    @Default('created_at') @JsonKey(name: 'created_at') String createdAt,
    @Default('updated_at') @JsonKey(name: 'updated_at') String updatedAt,
  }) = _UserInfoModel;

  factory UserInfoModel.fromJson(Map<String, dynamic> json) =>
      _$UserInfoModelFromJson(json);
}
