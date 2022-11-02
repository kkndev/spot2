import 'package:flutter_bloc/flutter_bloc.dart';

import '/features/auth/domain/repositories/auth_repository.dart';
import 'auth_state.dart';
import 'auth_event.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc({required this.authRepository}) : super(AuthState()) {
    on<InitAuth>((event, emit) {});
    on<Update>((event, emit) {
      emit(event.newAuthState);
    });
  }
}
