part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitialState extends LoginState{}

class PasswordVisibleState extends LoginState{
  final bool isPasswordVisible;

   PasswordVisibleState(this.isPasswordVisible);

  @override
  List<Object?> get props => [isPasswordVisible];
}

class LoginSuccessState extends LoginState{}

class LoginErrorState extends LoginState{}