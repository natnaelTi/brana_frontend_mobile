import '../light_forgot_password_type_otp_screen/widgets/listautolayoutver_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/widgets/custom_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

// ignore_for_file: must_be_immutable
class LightForgotPasswordTypeOtpScreen extends StatelessWidget {
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
                            "Forgot Password",
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
                        top: 106,
                        right: 24,
                      ),
                      child: Text(
                        "Code has been send to +1 111 ******99",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
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
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 60,
                      right: 24,
                    ),
                    child: Container(
                      width: getHorizontalSize(
                        380.00,
                      ),
                      height: getVerticalSize(
                        61.00,
                      ),
                      child: PinCodeTextField(
                        appContext: context,
                        length: 4,
                        obscureText: false,
                        obscuringCharacter: '*',
                        keyboardType: TextInputType.number,
                        autoDismissKeyboard: true,
                        enableActiveFill: true,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        onChanged: (value) {},
                        textStyle: TextStyle(
                             
                          fontSize: getFontSize(
                            24,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                        ),
                        pinTheme: PinTheme(
                          fieldHeight: getHorizontalSize(
                            61.00,
                          ),
                          fieldWidth: getHorizontalSize(
                            83.00,
                          ),
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              16.00,
                            ),
                          ),
                          selectedFillColor: ColorConstant.gray50,
                          activeFillColor: ColorConstant.gray50,
                          inactiveFillColor: ColorConstant.gray50,
                          inactiveColor: ColorConstant.gray200,
                          selectedColor: ColorConstant.gray200,
                          activeColor: ColorConstant.gray200,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: getMargin(
                        left: 24,
                        top: 60,
                        right: 24,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Resend code in ',
                              style: TextStyle(
                                   
                                fontSize: getFontSize(
                                  18,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.20,
                              ),
                            ),
                            TextSpan(
                              text: '55',
                              style: TextStyle(
                                color: ColorConstant.greenA700,
                                fontSize: getFontSize(
                                  18,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.20,
                              ),
                            ),
                            TextSpan(
                              text: ' s',
                              style: TextStyle(
                                   
                                fontSize: getFontSize(
                                  18,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.20,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  CustomButton(
                    width: 380,
                    text: "Verify",
                    margin: getMargin(
                      left: 24,
                      top: 97,
                      right: 24,
                    ),
                    variant: ButtonVariant.FillGreen700,
                    shape: ButtonShape.CircleBorder29,
                    padding: ButtonPadding.PaddingAll18,
                    fontStyle: ButtonFontStyle.UrbanistRomanBold16,
                    alignment: Alignment.center,
                  ),
                  Container(
                    width: double.infinity,
                    margin: getMargin(
                      top: 24,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray50,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          getHorizontalSize(
                            40.00,
                          ),
                        ),
                        topRight: Radius.circular(
                          getHorizontalSize(
                            40.00,
                          ),
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 12,
                            top: 12,
                            right: 12,
                          ),
                          child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return ListautolayoutverItemWidget();
                            },
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 12,
                            top: 8,
                            right: 12,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              CustomButton(
                                width: 129,
                                text: "*",
                                variant: ButtonVariant.FillGray50,
                                shape: ButtonShape.RoundedBorder12,
                                padding: ButtonPadding.PaddingAll13,
                                fontStyle: ButtonFontStyle.SFProDisplayMedium24,
                              ),
                              CustomButton(
                                width: 129,
                                text: "0",
                                variant: ButtonVariant.FillGray50,
                                shape: ButtonShape.RoundedBorder12,
                                padding: ButtonPadding.PaddingAll13,
                                fontStyle: ButtonFontStyle.SFProDisplayMedium24,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    12.00,
                                  ),
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgAutolayoutverGray50,
                                  height: getVerticalSize(
                                    56.00,
                                  ),
                                  width: getHorizontalSize(
                                    129.00,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            5.00,
                          ),
                          width: getHorizontalSize(
                            134.00,
                          ),
                          margin: getMargin(
                            left: 12,
                            top: 32,
                            right: 12,
                            bottom: 9,
                          ),
                          decoration: BoxDecoration(
                              
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                2.50,
                              ),
                            ),
                          ),
                        ),
                      ],
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
