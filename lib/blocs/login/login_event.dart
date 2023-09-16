part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class LogInSubmitEvent extends LoginEvent {
  LogInSubmitEvent(
      {required this.emailValue,
      required this.passwordValue,
      required this.loginType});

  final String emailValue;
  final String passwordValue;
  final LoginType loginType;
}

class LogInForgotPasswordEvent extends LoginEvent {}

class LogInSignUpEvent extends LoginEvent {}
