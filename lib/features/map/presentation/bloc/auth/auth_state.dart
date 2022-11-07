import 'package:freezed_annotation/freezed_annotation.dart';

import '/core/data/dto/request_status/request_status.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState([
    @Default(RequestStatus.init()) RequestStatus<String> requestStatus,
    @Default('') String result,
  ]) = _AuthState;
}