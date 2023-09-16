import 'package:flutter/material.dart';

import 'const.dart';


class AppColors {
  static const secondColor = Color(0xff000000);
  static const primaryColor = Color(0xffFFBB3B);
  static const bgDecorationColor = Color(0xff212121);
  static const hintColor = Color(0xffA2A2A2);
  static const labelColor = Color(0xffFFFFFF);
}

class AppBoarder{
  static final textFieldBorder=OutlineInputBorder(
    borderRadius: BorderRadius.circular(9),
    borderSide: BorderSide.none
  );
}

class AppTextStyle{
  static const textButtonBlack=TextStyle(
     color: AppColors.secondColor,
    fontSize: 14
  );
  static const textButtonWhite= TextStyle(
      fontSize: 14
  );
}
