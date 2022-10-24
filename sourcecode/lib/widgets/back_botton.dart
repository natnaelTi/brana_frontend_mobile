import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

// ignore_for_file: must_be_immutable
class BackButtonWidget extends StatelessWidget {
  bool isDark;
   BackButtonWidget({required this.isDark }) ;

  @override
  Widget build(BuildContext context) {
   
    return Icon(Icons.arrow_back,color: isDark?Colors.white:Colors.black,size: getSize(28),);
    
  }
}