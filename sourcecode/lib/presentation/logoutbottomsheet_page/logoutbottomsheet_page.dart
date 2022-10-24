import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/presentation/light_sign_in_blank_form_screen/light_sign_in_blank_form_screen.dart';
import 'package:hearme/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class LogoutbottomsheetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: getVerticalSize(
              3.00,
            ),
            width: getHorizontalSize(
              38.00,
            ),
            margin: getMargin(
              left: 24,
              top: 8,
              right: 24,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.gray300,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  1.50,
                ),
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 24,
              top: 24,
              right: 24,
            ),
            child: Text(
              "Logout",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorConstant.redA200,
                fontSize: getFontSize(
                  24,
                ),
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
            height: getVerticalSize(
              1.00,
            ),
            width: getHorizontalSize(
              380.00,
            ),
            margin: getMargin(
              left: 24,
              top: 24,
              right: 24,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.gray200,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 24,
              top: 23,
              right: 24,
            ),
            child: Text(
              "Are you sure you want to log out?",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                  
                fontSize: getFontSize(
                  20,
                ),
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 24,
              top: 24,
              right: 24,
              bottom: 48,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomButton(
                  width: 184,
                  text: "Cancel",
                  variant: ButtonVariant.FillGreen50,
                  shape: ButtonShape.CircleBorder29,
                  padding: ButtonPadding.PaddingAll18,
                  fontStyle: ButtonFontStyle.UrbanistRomanBold16GreenA700,
                  onTap: (){
                    onTapBtnCancel(context);
                  },
                ),
                CustomButton(
                  width: 184,
                  text: "Yes, Logout",
                  margin: getMargin(
                    left: 12,
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:
                     (context)=>LightSignInBlankFormScreen()));
                  },
                  variant: ButtonVariant.OutlineGreenA7003f,
                  shape: ButtonShape.CircleBorder29,
                  padding: ButtonPadding.PaddingAll18,
                  fontStyle: ButtonFontStyle.UrbanistRomanBold16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onTapBtnCancel(BuildContext context) {
    Navigator.pop(context);
  }
}
