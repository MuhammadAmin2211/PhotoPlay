import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'forgot_password_event.dart';
part 'forgot_password_state.dart';

class ForgotPasswordBloc extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  ForgotPasswordBloc() : super(ForgotPasswordInitial()) {
    on<ForgotPasswordSubmitEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<ForgotPasswordPopEvent>((event, emit) {
      emit(ForgotPasswordPopState());
    });
  }
}
