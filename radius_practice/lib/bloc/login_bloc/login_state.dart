part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginOnLoadState extends LoginState{}

class LoginSuccessState extends LoginState{}

class LoginErrorState extends LoginState{}