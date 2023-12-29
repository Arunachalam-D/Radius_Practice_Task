import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
      on<LoginOnLoadEvent>(loginOnLoadEvent);
      // on<LoginPasswordVisibleEvent>(passwordVisibleEvent());
      // on<LoginDetailsSubmitEvent>(loginDetailsSubmitEvent());
  }

  FutureOr<void> loginOnLoadEvent(LoginOnLoadEvent event, Emitter <LoginState> emit) async {
    emit(LoginOnLoadState());
  }



  //
  // EventHandler<LoginPasswordVisibleEvent, LoginState> passwordVisibleEvent() {
  //
  // }

  // EventHandler<LoginDetailsSubmitEvent, LoginState> loginDetailsSubmitEvent() {
  //
  // }


}
