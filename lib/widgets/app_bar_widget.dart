import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../const/const.dart';

class CommonAppBar {
  static PreferredSizeWidget? appBarWidget(context,{Function()? onTap}) {
    return AppBar(
      leadingWidth: 100,
      leading: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            const Icon(
              CupertinoIcons.back,
              color: AppColors.labelColor,
              size: 18,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              'BACK',
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
      ),
    );
  }
}
