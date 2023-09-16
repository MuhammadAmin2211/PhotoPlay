part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LogInErrorState extends LoginState {}

class LogInLoadingState extends LoginState {}

class LogInSuccessState extends LoginState {}

class LogInSignUpState extends LoginState {}

class LogInForgotPasswordState extends LoginState {}
