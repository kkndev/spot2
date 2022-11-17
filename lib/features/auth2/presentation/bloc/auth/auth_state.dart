import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/request_status/request_status.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState([
    @Default(RequestStatus.init())
        RequestStatus<String> refreshUserMasterTokenRequestStatus,
    @Default(RequestStatus.init())
        RequestStatus<String> loginToServiceRequestStatus,
  ]) = _AuthState;
}
