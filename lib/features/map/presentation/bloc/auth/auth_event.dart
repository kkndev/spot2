import 'auth_state.dart';

abstract class AuthEvent {}

class InitAuth extends AuthEvent {}

class Update extends AuthEvent {
  Update({required this.newAuthState});
  final AuthState newAuthState;
}

class GetCodeByEmail extends AuthEvent {
  GetCodeByEmail({required this.email});
  final String email;
}
