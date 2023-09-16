import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:photoPlay/blocs/login/login_bloc.dart';
import 'package:photoPlay/routes/routes.dart';

import '../const/const.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final TextEditingController emailTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(ImagePaths.loginBG,
              width: MediaQuery.of(context).size.width),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: AppColors.secondColor.withOpacity(0.75),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45),
            child: SingleChildScrollView(
              child: BlocListener<LoginBloc, LoginState>(
                listener: (context, state) {
                  if (state is LogInForgotPasswordState) {
                    Navigator.of(context).pushNamed(Routes.forgotPassword);
                  } else if (state is LogInSignUpState) {
                  } else if (state is LogInErrorState) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Please enter valid credential.')));
                  } else if (state is LogInLoadingState) {
                  } else if (state is LogInSuccessState) {}
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                    SvgPicture.asset(ImagePaths.logo),
                    const Padding(
                      padding: EdgeInsets.only(top: 45, bottom: 8),
                      child: Row(
                        children: [
                          Text(
                            "EMAIL",
                          ),
                        ],
                      ),
                    ),
                    TextFormField(
                      controller: emailTextController,
                      decoration: const InputDecoration(
                        hintText: "email",
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 25, bottom: 8),
                      child: Row(
                        children: [
                          Text(
                            "PASSWORD",
                          ),
                        ],
                      ),
                    ),
                    TextFormField(
                      controller: passwordTextController,
                      decoration: const InputDecoration(
                        hintText: "password",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              BlocProvider.of<LoginBloc>(context)
                                  .add(LogInForgotPasswordEvent());
                            },
                            child: const Text(
                              "FORGOT PASSWORD?",
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        BlocProvider.of<LoginBloc>(context).add(
                            LogInSubmitEvent(
                                emailValue: emailTextController.text,
                                passwordValue: passwordTextController.text,
                                loginType: LoginType.email));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(9)),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Center(
                            child: Text(
                              "LOGIN",
                              style: AppTextStyle.textButtonBlack,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      children: [
                        Expanded(child: Divider()),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text("Social Logins"),
                        ),
                        Expanded(child: Divider()),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(ImagePaths.fbLogin),
                        const SizedBox(
                          width: 25,
                        ),
                        SvgPicture.asset(ImagePaths.gLogin),
                      ],
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    const Text(
                      "Don’t have an account?",
                      style: TextStyle(
                          fontFamily: FontFamily.normal,
                          color: AppColors.hintColor),
                    ),
                    const Text("REGISTER"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
