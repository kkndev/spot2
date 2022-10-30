import 'user_info_state.dart';

abstract class UserInfoEvent {}

class InitUserInfo extends UserInfoEvent {}

class Update extends UserInfoEvent {
  Update({required this.newUserInfoState});
  final UserInfoState newUserInfoState;
}
