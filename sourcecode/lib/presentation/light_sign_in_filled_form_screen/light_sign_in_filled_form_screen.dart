import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/widgets/custom_button.dart';
import 'package:hearme/widgets/custom_icon_button.dart';
import 'package:hearme/widgets/custom_text_form_field.dart';

class LightSignInFilledFormScreen extends StatelessWidget {
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
                  Padding(
                    padding: getPadding(
                      left: 28,
                      top: 40,
                      right: 28,
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
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        top: 47,
                        right: 24,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            50.00,
                          ),
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.imgTypelogodefau,
                          height: getSize(
                            100.00,
                          ),
                          width: getSize(
                            100.00,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        top: 31,
                        right: 24,
                      ),
                      child: Text(
                        "Login to Your Account",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                             
                          fontSize: getFontSize(
                            32,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  CustomTextFormField(
                    width: 380,
                    focusNode: FocusNode(),
                    hintText: "andrew_ainsley@yourdomain.com",
                    margin: getMargin(
                      left: 24,
                      top: 31,
                      right: 24,
                    ),
                    alignment: Alignment.center,
                    prefix: Container(
                      margin: getMargin(
                        left: 21,
                        top: 22,
                        right: 13,
                        bottom: 22,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgExcludeGray900,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      minWidth: getSize(
                        15.00,
                      ),
                      minHeight: getSize(
                        15.00,
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
                    text: "Sign in",
                    margin: getMargin(
                      left: 24,
                      top: 24,
                      right: 24,
                    ),
                    variant: ButtonVariant.OutlineGreenA7003f,
                    shape: ButtonShape.CircleBorder29,
                    padding: ButtonPadding.PaddingAll18,
                    fontStyle: ButtonFontStyle.UrbanistRomanBold16,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        top: 24,
                        right: 24,
                      ),
                      child: Text(
                        "Forgot the password?",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ColorConstant.greenA700,
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.20,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        top: 41,
                        right: 24,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            height: getVerticalSize(
                              1.00,
                            ),
                            width: getHorizontalSize(
                              96.00,
                            ),
                            margin: getMargin(
                              top: 12,
                              bottom: 11,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray200,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 16,
                            ),
                            child: Text(
                              "or continue with",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  
                                fontSize: getFontSize(
                                  18,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.20,
                              ),
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              1.00,
                            ),
                            width: getHorizontalSize(
                              96.00,
                            ),
                            margin: getMargin(
                              left: 16,
                              top: 12,
                              bottom: 11,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray200,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        top: 30,
                        right: 24,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                16.00,
                              ),
                            ),
                            child: CommonImageView(
                              imagePath: ImageConstant.imgTypelogintypWhiteA700,
                              height: getVerticalSize(
                                60.00,
                              ),
                              width: getHorizontalSize(
                                88.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 20,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  16.00,
                                ),
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgGoogle,
                                height: getVerticalSize(
                                  60.00,
                                ),
                                width: getHorizontalSize(
                                  87.00,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 20,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  16.00,
                                ),
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgUser1,
                                height: getVerticalSize(
                                  60.00,
                                ),
                                width: getHorizontalSize(
                                  88.00,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        top: 32,
                        right: 24,
                        bottom: 48,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Don’t have an account?",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: ColorConstant.gray500,
                              fontSize: getFontSize(
                                14,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.20,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 8,
                            ),
                            child: Text(
                              "Sign up",
                              overflow: TextOverflow.ellipsis,
                              textAlign:   TextAlign.start,
                              style: TextStyle(
                                color: ColorConstant.greenA700,
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
