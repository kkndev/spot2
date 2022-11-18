abstract class UserEvent {}

class InitUser extends UserEvent {}

class GetUserEvent extends UserEvent {
  GetUserEvent({required this.id});
  final int id;
}

class UpdateUserEvent extends UserEvent {
  UpdateUserEvent({required this.name});
  final String name;
}

class WhoamiEvent extends UserEvent {}

class GetMinAppVersionEvent extends UserEvent {}

class ActivatePromoCodeEvent extends UserEvent {
  ActivatePromoCodeEvent({required this.promoCode});
  final String promoCode;
}

class ClearPromoCodeEvent extends UserEvent {
  ClearPromoCodeEvent();
}
