part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {
  const LoginEvent();
}

class LoginOnLoadEvent extends LoginEvent{
  const LoginOnLoadEvent();
}

class LoginPasswordVisibleEvent extends LoginEvent{}

class LoginDetailsSubmitEvent extends LoginEvent{
  final String? email;
  final String? password;
    const LoginDetailsSubmitEvent({
       this.email,
       this.password,
});
}