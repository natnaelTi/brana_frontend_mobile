import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({
    Key? key,
    required this.isDark,
  }) : super(key: key);

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Container(
     color: isDark?ColorConstant.darkButton:ColorConstant.gray200,
     height: 1,

    );
  }
}

