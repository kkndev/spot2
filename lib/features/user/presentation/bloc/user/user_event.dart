abstract class UserEvent {}

class InitUser extends UserEvent {}

class GetUserEvent extends UserEvent {
  GetUserEvent({required this.id});
  final String id;
}

class ActivatePromoCodeEvent extends UserEvent {
  ActivatePromoCodeEvent({required this.promoCode});
  final String promoCode;
}

class ClearPromoCodeEvent extends UserEvent {
  ClearPromoCodeEvent();
}
