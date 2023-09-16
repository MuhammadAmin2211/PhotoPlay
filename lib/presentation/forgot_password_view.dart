import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:photoPlay/blocs/forgot_password/forgot_password_bloc.dart';


import '../const/const.dart';
import '../widgets/widgets.dart';

class ForgotPasswordView extends StatelessWidget {
  ForgotPasswordView({super.key});

  final TextEditingController emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar:CommonAppBar.appBarWidget(context,
      onTap: (){
        BlocProvider.of<ForgotPasswordBloc>(context).add(ForgotPasswordPopEvent());
      }
      ),
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
              child: BlocListener<ForgotPasswordBloc, ForgotPasswordState>(
                listener: (context, state) {
                  if (state is ForgotPasswordPopState) {
                    Navigator.pop(context);
                  } else if (state is ForgotPasswordLoadingState) {
                  } else if (state is ForgotPasswordSuccessState) {
                  }
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                    SvgPicture.asset(ImagePaths.logo),
                    const SizedBox(
                      height: 45,
                    ),
                    const Text(
                      "FORGOT PASSWORD?",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Enter the email address you used to create your account and we will email you a link to reset your password",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
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
                    const SizedBox(
                      height: 25,
                    ),
SubmitButton(label:'SEND EMAIL',onTap: (){
  BlocProvider.of<ForgotPasswordBloc>(context).add(ForgotPasswordSubmitEvent());
},)
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
