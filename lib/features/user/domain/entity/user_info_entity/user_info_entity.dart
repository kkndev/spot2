import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info_entity.freezed.dart';

@freezed
class UserInfoEntity with _$UserInfoEntity {
  const factory UserInfoEntity({
    required int id,
    required bool isAutoPay,
    required String nextPaymentDate,
    required String nextSubscriptionId,
    required String paymentSource,
    required List<String> roles,
    required String status,
    required String subscriptionCost,
    required String subscriptionName,
    required String subscriptionStatus,
    required bool wasSubscribed,
  }) = _UserInfoEntity;

  static const emptyUser = UserInfoEntity(
    id: 0,
    isAutoPay: false,
    nextPaymentDate: 'nextPaymentDate',
    nextSubscriptionId: 'nextSubscriptionId',
    paymentSource: 'paymentSource',
    roles: [],
    status: 'status',
    subscriptionCost: 'subscriptionCost',
    subscriptionName: 'subscriptionName',
    subscriptionStatus: 'subscriptionStatus',
    wasSubscribed: false,
  );
}
