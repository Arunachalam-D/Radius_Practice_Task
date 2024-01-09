import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(PasswordVisibleState(false)) {
      on<LoginPasswordVisibleEvent>(passwordVisibleEvent);
  }
  FutureOr<void> passwordVisibleEvent(LoginPasswordVisibleEvent event, Emitter<LoginState> emit) {
         print("toggles");
         final currentState = state as PasswordVisibleState;
         print(currentState.isPasswordVisible);
         emit(PasswordVisibleState(!currentState.isPasswordVisible));
  }
}
