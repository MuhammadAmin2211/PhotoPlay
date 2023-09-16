import 'package:flutter/material.dart';

import '../const/const.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({this.onTap,required this.label,super.key});
  final Function()? onTap;
  final String label;

  @override
  Widget build(BuildContext context) {
    return                     InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(9)),
        child:  Padding(
          padding:const EdgeInsets.symmetric(vertical: 12),
          child: Center(
            child: Text(
              label.toUpperCase(),
              style: AppTextStyle.textButtonBlack,
            ),
          ),
        ),
      ),
    );
  }
}
