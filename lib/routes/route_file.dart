import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../blocs/forgot_password/forgot_password_bloc.dart';
import '../blocs/login/login_bloc.dart';
import '../presentation/screens.dart';
import 'routes.dart';

class RoutesGenerator {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initial:
        return MaterialPageRoute(builder: (context)=>BlocProvider(
          create: (context) => LoginBloc(),
          child: LoginView(),
        ),);
      case Routes.forgotPassword:
        return MaterialPageRoute(builder: (context) =>
            BlocProvider(create: (context) => ForgotPasswordBloc(),
            child:  ForgotPasswordView(),));
    }
    return null;
  }
}