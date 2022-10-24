import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/widgets/custom_button.dart';
import 'package:hearme/widgets/custom_icon_button.dart';
import 'package:hearme/widgets/custom_text_form_field.dart';

class LightForgotPasswordCreateNewPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: size.width,
                    margin: getMargin(
                      left: 28,
                      top: 33,
                      right: 28,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 6,
                            bottom: 6,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgArrowleft,
                            height: getVerticalSize(
                              15.00,
                            ),
                            width: getHorizontalSize(
                              19.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 20,
                          ),
                          child: Text(
                            "Create New Password",
                            overflow: TextOverflow.ellipsis,
                            textAlign:   TextAlign.start,
                            style: TextStyle(
                                 
                              fontSize: getFontSize(
                                24,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        top: 80,
                        right: 24,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgFrame250X329,
                        height: getVerticalSize(
                          250.00,
                        ),
                        width: getHorizontalSize(
                          329.00,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        top: 71,
                        right: 24,
                      ),
                      child: Text(
                        "Create Your New Password",
                        overflow: TextOverflow.ellipsis,
                        textAlign:   TextAlign.start,
                        style: TextStyle(
                             
                          fontSize: getFontSize(
                            18,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.20,
                        ),
                      ),
                    ),
                  ),
                  CustomTextFormField(
                    width: 380,
                    focusNode: FocusNode(),
                    hintText: "●●●●●●●●●●●●",
                    margin: getMargin(
                      left: 24,
                      top: 24,
                      right: 24,
                    ),
                    alignment: Alignment.center,
                    prefix: Container(
                      margin: getMargin(
                        left: 22,
                        top: 21,
                        right: 14,
                        bottom: 21,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgLock16X14,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      minWidth: getSize(
                        16.67,
                      ),
                      minHeight: getSize(
                        16.67,
                      ),
                    ),
                    suffix: Container(
                      margin: getMargin(
                        left: 30,
                        top: 22,
                        right: 21,
                        bottom: 22,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgSettings,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      minWidth: getHorizontalSize(
                        16.67,
                      ),
                      minHeight: getVerticalSize(
                        14.17,
                      ),
                    ),
                  ),
                  CustomTextFormField(
                    width: 380,
                    focusNode: FocusNode(),
                    hintText: "●●●●●●●●●●●●",
                    margin: getMargin(
                      left: 24,
                      top: 24,
                      right: 24,
                    ),
                    textInputAction: TextInputAction.done,
                    alignment: Alignment.center,
                    prefix: Container(
                      margin: getMargin(
                        left: 22,
                        top: 21,
                        right: 14,
                        bottom: 21,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgLock16X14,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      minWidth: getSize(
                        16.67,
                      ),
                      minHeight: getSize(
                        16.67,
                      ),
                    ),
                    suffix: Container(
                      margin: getMargin(
                        left: 30,
                        top: 22,
                        right: 21,
                        bottom: 22,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgSettings,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      minWidth: getHorizontalSize(
                        16.67,
                      ),
                      minHeight: getVerticalSize(
                        14.17,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        top: 24,
                        right: 24,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomIconButton(
                            height: 24,
                            width: 24,
                            shape: IconButtonShape.RoundedBorder8,
                            padding: IconButtonPadding.PaddingAll7,
                            child: CommonImageView(
                              svgPath: ImageConstant.imgGroupWhiteA700,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 12,
                              top: 2,
                              bottom: 2,
                            ),
                            child: Text(
                              "Remember me",
                              overflow: TextOverflow.ellipsis,
                              textAlign:   TextAlign.start,
                              style: TextStyle(
                                   
                                fontSize: getFontSize(
                                  14,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomButton(
                    width: 380,
                    text: "Continue",
                    margin: getMargin(
                      left: 24,
                      top: 71,
                      right: 24,
                      bottom: 20,
                    ),
                    variant: ButtonVariant.OutlineGreenA7003f,
                    shape: ButtonShape.CircleBorder29,
                    padding: ButtonPadding.PaddingAll18,
                    fontStyle: ButtonFontStyle.UrbanistRomanBold16,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
