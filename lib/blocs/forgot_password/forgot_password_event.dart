part of 'forgot_password_bloc.dart';

@immutable
abstract class ForgotPasswordEvent {}

class ForgotPasswordSubmitEvent extends ForgotPasswordEvent{}

class ForgotPasswordPopEvent extends ForgotPasswordEvent{}
