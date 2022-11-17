abstract class AuthEvent {}

class InitAuthEvent extends AuthEvent {}

class RefreshUserMasterTokenEvent extends AuthEvent {
  RefreshUserMasterTokenEvent({
    required this.id,
  });
  final int id;
}

class LoginToServiceEvent extends AuthEvent {
  LoginToServiceEvent({
    required this.serviceName,
  });
  final String serviceName;
}
