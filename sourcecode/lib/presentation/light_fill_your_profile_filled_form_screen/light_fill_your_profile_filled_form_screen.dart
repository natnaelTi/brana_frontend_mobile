import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/widgets/custom_button.dart';
import 'package:hearme/widgets/custom_text_form_field.dart';

class LightFillYourProfileFilledFormScreen extends StatelessWidget {
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
                            "Fill Your Profile",
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
                    child: Container(
                      height: getSize(
                        140.00,
                      ),
                      width: getSize(
                        140.00,
                      ),
                      margin: getMargin(
                        left: 24,
                        top: 33,
                        right: 24,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  70.00,
                                ),
                              ),
                              child: CommonImageView(
                                imagePath: ImageConstant.imgEllipse80X80,
                                height: getSize(
                                  140.00,
                                ),
                                width: getSize(
                                  140.00,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: getPadding(
                                left: 10,
                                top: 10,
                                right: 2,
                                bottom: 2,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgEdit,
                                height: getSize(
                                  29.00,
                                ),
                                width: getSize(
                                  29.00,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomTextFormField(
                    width: 380,
                    focusNode: FocusNode(),
                    hintText: "Andrew Ainsley",
                    margin: getMargin(
                      left: 24,
                      top: 24,
                      right: 24,
                    ),
                    alignment: Alignment.center,
                  ),
                  CustomTextFormField(
                    width: 380,
                    focusNode: FocusNode(),
                    hintText: "Andrew",
                    margin: getMargin(
                      left: 24,
                      top: 24,
                      right: 24,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: getMargin(
                        left: 24,
                        top: 24,
                        right: 24,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.gray50,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            16.00,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 20,
                              top: 18,
                              bottom: 18,
                            ),
                            child: Text(
                              "12/27/1995",
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
                          Padding(
                            padding: getPadding(
                              top: 19,
                              right: 22,
                              bottom: 19,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgCalendar,
                              height: getVerticalSize(
                                16.00,
                              ),
                              width: getHorizontalSize(
                                15.00,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomTextFormField(
                    width: 380,
                    focusNode: FocusNode(),
                    hintText: "andrew_ainsley@yourdomain.com",
                    margin: getMargin(
                      left: 24,
                      top: 24,
                      right: 24,
                    ),
                    textInputAction: TextInputAction.done,
                    alignment: Alignment.center,
                    suffix: Container(
                      margin: getMargin(
                        left: 30,
                        top: 20,
                        right: 22,
                        bottom: 20,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgSignal15X15,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      minWidth: getHorizontalSize(
                        15.87,
                      ),
                      minHeight: getVerticalSize(
                        15.19,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: getMargin(
                        left: 24,
                        top: 24,
                        right: 24,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.gray50,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            16.00,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 20,
                              top: 19,
                              bottom: 19,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgGroup1,
                              height: getVerticalSize(
                                18.00,
                              ),
                              width: getHorizontalSize(
                                24.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 11,
                              top: 25,
                              bottom: 25,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgArrowdownGray900,
                              height: getVerticalSize(
                                4.00,
                              ),
                              width: getHorizontalSize(
                                9.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 15,
                              top: 18,
                              right: 190,
                              bottom: 18,
                            ),
                            child: Text(
                              "+1 111 467 378 399",
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
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        top: 140,
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
                            text: "Skip",
                            variant: ButtonVariant.FillGreen50,
                            shape: ButtonShape.CircleBorder29,
                            padding: ButtonPadding.PaddingAll18,
                            fontStyle:
                                ButtonFontStyle.UrbanistRomanBold16GreenA700,
                          ),
                          CustomButton(
                            width: 184,
                            text: "Continue",
                            margin: getMargin(
                              left: 12,
                            ),
                            variant: ButtonVariant.OutlineGreenA7003f,
                            shape: ButtonShape.CircleBorder29,
                            padding: ButtonPadding.PaddingAll18,
                            fontStyle: ButtonFontStyle.UrbanistRomanBold16,
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
