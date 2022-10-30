import 'package:flutter_bloc/flutter_bloc.dart';

import 'user_info_state.dart';
import 'user_info_event.dart';

class UserInfoBloc extends Bloc<UserInfoEvent, UserInfoState> {
  UserInfoBloc() : super(UserInfoState()) {
    on<InitUserInfo>((event, emit) {});
    on<Update>((event, emit) {
      emit(event.newUserInfoState);
    });
  }
}
