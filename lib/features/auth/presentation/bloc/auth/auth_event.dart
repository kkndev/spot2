import 'auth_state.dart';

abstract class AuthEvent {}

class InitAuth extends AuthEvent {}

class Update extends AuthEvent {
  Update({required this.newAuthState});
  final AuthState newAuthState;
}

class UpdatePhoneOrEmail extends AuthEvent {
  UpdatePhoneOrEmail({required this.newPhoneOrEmail});
  final String newPhoneOrEmail;
}

class UpdateTokens extends AuthEvent {
  UpdateTokens({
    required this.userMasterToken,
    required this.userMasterRefreshToken,
  });
  final String userMasterRefreshToken;
  final String userMasterToken;
}

class GetCodeByEmailEvent extends AuthEvent {
  GetCodeByEmailEvent({required this.email});
  final String email;
}

class GetCodeByPhoneEvent extends AuthEvent {
  GetCodeByPhoneEvent({required this.phone});
  final String phone;
}

class SendCodeFromPhoneEvent extends AuthEvent {
  SendCodeFromPhoneEvent({required this.code});
  final String code;
}

class SendCodeFromEmailEvent extends AuthEvent {
  SendCodeFromEmailEvent({required this.code});
  final String code;
}

class GetParkingItemsEvent extends AuthEvent {
  GetParkingItemsEvent({required this.code});
  final String code;
}
