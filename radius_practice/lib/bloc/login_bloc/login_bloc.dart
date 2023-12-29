import 'dart:async';
import 'dart:html';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
      on<LoginOnLoadEvent>(loginOnLoadEvent());
      on<LoginPasswordVisibleEvent>(passwordVisibleEvent());
      on<LoginDetailsSubmitEvent>(loginDetailsSubmitEvent());
  }

  Future<EventHandler<LoginOnLoadEvent, LoginState>> loginOnLoadEvent() async {
    emit(LoginOnLoadState());
  }

  EventHandler<LoginPasswordVisibleEvent, LoginState> passwordVisibleEvent() {}

  EventHandler<LoginDetailsSubmitEvent, LoginState> loginDetailsSubmitEvent() {}


}
