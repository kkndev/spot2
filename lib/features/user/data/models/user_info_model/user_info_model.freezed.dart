// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserInfoModel _$UserInfoModelFromJson(Map<String, dynamic> json) {
  return _UserInfoModel.fromJson(json);
}

/// @nodoc
mixin _$UserInfoModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_auto_pay')
  bool get isAutoPay => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_payment_date')
  String get nextPaymentDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_subscription_id')
  String get nextSubscriptionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_source')
  String get paymentSource => throw _privateConstructorUsedError;
  List<String> get roles => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscription_cost')
  String get subscriptionCost => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscription_name')
  String get subscriptionName => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscription_status')
  String get subscriptionStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'was_subscribed')
  bool get wasSubscribed => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInfoModelCopyWith<UserInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoModelCopyWith<$Res> {
  factory $UserInfoModelCopyWith(
          UserInfoModel value, $Res Function(UserInfoModel) then) =
      _$UserInfoModelCopyWithImpl<$Res, UserInfoModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'is_auto_pay') bool isAutoPay,
      @JsonKey(name: 'next_payment_date') String nextPaymentDate,
      @JsonKey(name: 'next_subscription_id') String nextSubscriptionId,
      @JsonKey(name: 'payment_source') String paymentSource,
      List<String> roles,
      String status,
      @JsonKey(name: 'subscription_cost') String subscriptionCost,
      @JsonKey(name: 'subscription_name') String subscriptionName,
      @JsonKey(name: 'subscription_status') String subscriptionStatus,
      @JsonKey(name: 'was_subscribed') bool wasSubscribed,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class _$UserInfoModelCopyWithImpl<$Res, $Val extends UserInfoModel>
    implements $UserInfoModelCopyWith<$Res> {
  _$UserInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isAutoPay = null,
    Object? nextPaymentDate = null,
    Object? nextSubscriptionId = null,
    Object? paymentSource = null,
    Object? roles = null,
    Object? status = null,
    Object? subscriptionCost = null,
    Object? subscriptionName = null,
    Object? subscriptionStatus = null,
    Object? wasSubscribed = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isAutoPay: null == isAutoPay
          ? _value.isAutoPay
          : isAutoPay // ignore: cast_nullable_to_non_nullable
              as bool,
      nextPaymentDate: null == nextPaymentDate
          ? _value.nextPaymentDate
          : nextPaymentDate // ignore: cast_nullable_to_non_nullable
              as String,
      nextSubscriptionId: null == nextSubscriptionId
          ? _value.nextSubscriptionId
          : nextSubscriptionId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentSource: null == paymentSource
          ? _value.paymentSource
          : paymentSource // ignore: cast_nullable_to_non_nullable
              as String,
      roles: null == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      subscriptionCost: null == subscriptionCost
          ? _value.subscriptionCost
          : subscriptionCost // ignore: cast_nullable_to_non_nullable
              as String,
      subscriptionName: null == subscriptionName
          ? _value.subscriptionName
          : subscriptionName // ignore: cast_nullable_to_non_nullable
              as String,
      subscriptionStatus: null == subscriptionStatus
          ? _value.subscriptionStatus
          : subscriptionStatus // ignore: cast_nullable_to_non_nullable
              as String,
      wasSubscribed: null == wasSubscribed
          ? _value.wasSubscribed
          : wasSubscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserInfoModelCopyWith<$Res>
    implements $UserInfoModelCopyWith<$Res> {
  factory _$$_UserInfoModelCopyWith(
          _$_UserInfoModel value, $Res Function(_$_UserInfoModel) then) =
      __$$_UserInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'is_auto_pay') bool isAutoPay,
      @JsonKey(name: 'next_payment_date') String nextPaymentDate,
      @JsonKey(name: 'next_subscription_id') String nextSubscriptionId,
      @JsonKey(name: 'payment_source') String paymentSource,
      List<String> roles,
      String status,
      @JsonKey(name: 'subscription_cost') String subscriptionCost,
      @JsonKey(name: 'subscription_name') String subscriptionName,
      @JsonKey(name: 'subscription_status') String subscriptionStatus,
      @JsonKey(name: 'was_subscribed') bool wasSubscribed,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class __$$_UserInfoModelCopyWithImpl<$Res>
    extends _$UserInfoModelCopyWithImpl<$Res, _$_UserInfoModel>
    implements _$$_UserInfoModelCopyWith<$Res> {
  __$$_UserInfoModelCopyWithImpl(
      _$_UserInfoModel _value, $Res Function(_$_UserInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isAutoPay = null,
    Object? nextPaymentDate = null,
    Object? nextSubscriptionId = null,
    Object? paymentSource = null,
    Object? roles = null,
    Object? status = null,
    Object? subscriptionCost = null,
    Object? subscriptionName = null,
    Object? subscriptionStatus = null,
    Object? wasSubscribed = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_UserInfoModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isAutoPay: null == isAutoPay
          ? _value.isAutoPay
          : isAutoPay // ignore: cast_nullable_to_non_nullable
              as bool,
      nextPaymentDate: null == nextPaymentDate
          ? _value.nextPaymentDate
          : nextPaymentDate // ignore: cast_nullable_to_non_nullable
              as String,
      nextSubscriptionId: null == nextSubscriptionId
          ? _value.nextSubscriptionId
          : nextSubscriptionId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentSource: null == paymentSource
          ? _value.paymentSource
          : paymentSource // ignore: cast_nullable_to_non_nullable
              as String,
      roles: null == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      subscriptionCost: null == subscriptionCost
          ? _value.subscriptionCost
          : subscriptionCost // ignore: cast_nullable_to_non_nullable
              as String,
      subscriptionName: null == subscriptionName
          ? _value.subscriptionName
          : subscriptionName // ignore: cast_nullable_to_non_nullable
              as String,
      subscriptionStatus: null == subscriptionStatus
          ? _value.subscriptionStatus
          : subscriptionStatus // ignore: cast_nullable_to_non_nullable
              as String,
      wasSubscribed: null == wasSubscribed
          ? _value.wasSubscribed
          : wasSubscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserInfoModel implements _UserInfoModel {
  const _$_UserInfoModel(
      {required this.id,
      @JsonKey(name: 'is_auto_pay')
          this.isAutoPay = false,
      @JsonKey(name: 'next_payment_date')
          this.nextPaymentDate = 'next_payment_date',
      @JsonKey(name: 'next_subscription_id')
          this.nextSubscriptionId = 'next_subscription_id',
      @JsonKey(name: 'payment_source')
          this.paymentSource = 'payment_source',
      final List<String> roles = const [],
      this.status = '',
      @JsonKey(name: 'subscription_cost')
          this.subscriptionCost = 'subscription_cost',
      @JsonKey(name: 'subscription_name')
          this.subscriptionName = 'subscription_name',
      @JsonKey(name: 'subscription_status')
          this.subscriptionStatus = 'subscription_status',
      @JsonKey(name: 'was_subscribed')
          this.wasSubscribed = false,
      @JsonKey(name: 'created_at')
          this.createdAt = 'created_at',
      @JsonKey(name: 'updated_at')
          this.updatedAt = 'updated_at'})
      : _roles = roles;

  factory _$_UserInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserInfoModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'is_auto_pay')
  final bool isAutoPay;
  @override
  @JsonKey(name: 'next_payment_date')
  final String nextPaymentDate;
  @override
  @JsonKey(name: 'next_subscription_id')
  final String nextSubscriptionId;
  @override
  @JsonKey(name: 'payment_source')
  final String paymentSource;
  final List<String> _roles;
  @override
  @JsonKey()
  List<String> get roles {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roles);
  }

  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey(name: 'subscription_cost')
  final String subscriptionCost;
  @override
  @JsonKey(name: 'subscription_name')
  final String subscriptionName;
  @override
  @JsonKey(name: 'subscription_status')
  final String subscriptionStatus;
  @override
  @JsonKey(name: 'was_subscribed')
  final bool wasSubscribed;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  @override
  String toString() {
    return 'UserInfoModel(id: $id, isAutoPay: $isAutoPay, nextPaymentDate: $nextPaymentDate, nextSubscriptionId: $nextSubscriptionId, paymentSource: $paymentSource, roles: $roles, status: $status, subscriptionCost: $subscriptionCost, subscriptionName: $subscriptionName, subscriptionStatus: $subscriptionStatus, wasSubscribed: $wasSubscribed, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserInfoModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isAutoPay, isAutoPay) ||
                other.isAutoPay == isAutoPay) &&
            (identical(other.nextPaymentDate, nextPaymentDate) ||
                other.nextPaymentDate == nextPaymentDate) &&
            (identical(other.nextSubscriptionId, nextSubscriptionId) ||
                other.nextSubscriptionId == nextSubscriptionId) &&
            (identical(other.paymentSource, paymentSource) ||
                other.paymentSource == paymentSource) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.subscriptionCost, subscriptionCost) ||
                other.subscriptionCost == subscriptionCost) &&
            (identical(other.subscriptionName, subscriptionName) ||
                other.subscriptionName == subscriptionName) &&
            (identical(other.subscriptionStatus, subscriptionStatus) ||
                other.subscriptionStatus == subscriptionStatus) &&
            (identical(other.wasSubscribed, wasSubscribed) ||
                other.wasSubscribed == wasSubscribed) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      isAutoPay,
      nextPaymentDate,
      nextSubscriptionId,
      paymentSource,
      const DeepCollectionEquality().hash(_roles),
      status,
      subscriptionCost,
      subscriptionName,
      subscriptionStatus,
      wasSubscribed,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserInfoModelCopyWith<_$_UserInfoModel> get copyWith =>
      __$$_UserInfoModelCopyWithImpl<_$_UserInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserInfoModelToJson(
      this,
    );
  }
}

abstract class _UserInfoModel implements UserInfoModel {
  const factory _UserInfoModel(
      {required final int id,
      @JsonKey(name: 'is_auto_pay') final bool isAutoPay,
      @JsonKey(name: 'next_payment_date') final String nextPaymentDate,
      @JsonKey(name: 'next_subscription_id') final String nextSubscriptionId,
      @JsonKey(name: 'payment_source') final String paymentSource,
      final List<String> roles,
      final String status,
      @JsonKey(name: 'subscription_cost') final String subscriptionCost,
      @JsonKey(name: 'subscription_name') final String subscriptionName,
      @JsonKey(name: 'subscription_status') final String subscriptionStatus,
      @JsonKey(name: 'was_subscribed') final bool wasSubscribed,
      @JsonKey(name: 'created_at') final String createdAt,
      @JsonKey(name: 'updated_at') final String updatedAt}) = _$_UserInfoModel;

  factory _UserInfoModel.fromJson(Map<String, dynamic> json) =
      _$_UserInfoModel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'is_auto_pay')
  bool get isAutoPay;
  @override
  @JsonKey(name: 'next_payment_date')
  String get nextPaymentDate;
  @override
  @JsonKey(name: 'next_subscription_id')
  String get nextSubscriptionId;
  @override
  @JsonKey(name: 'payment_source')
  String get paymentSource;
  @override
  List<String> get roles;
  @override
  String get status;
  @override
  @JsonKey(name: 'subscription_cost')
  String get subscriptionCost;
  @override
  @JsonKey(name: 'subscription_name')
  String get subscriptionName;
  @override
  @JsonKey(name: 'subscription_status')
  String get subscriptionStatus;
  @override
  @JsonKey(name: 'was_subscribed')
  bool get wasSubscribed;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_UserInfoModelCopyWith<_$_UserInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
