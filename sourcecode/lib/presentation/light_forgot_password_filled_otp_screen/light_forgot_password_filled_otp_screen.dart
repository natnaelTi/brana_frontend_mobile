import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../light_create_new_password_screen/light_create_new_password_screen.dart';

// ignore_for_file: must_be_immutable
class LightForgotPasswordFilledOtpScreen extends StatelessWidget {
  bool isChangingPassword;
  LightForgotPasswordFilledOtpScreen({this.isChangingPassword = false});
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          isChangingPassword ? "Change Password" : "Forgot Password",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getFontSize(
              24,
            ),
            fontFamily: 'Urbanist',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Container(
        width: size.width,
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      10.00,
                    ),
                    top: getVerticalSize(
                      246.20,
                    ),
                    right: getHorizontalSize(
                      10.00,
                    ),
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
                Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      10.00,
                    ),
                    top: getVerticalSize(
                      60.00,
                    ),
                    right: getHorizontalSize(
                      10.00,
                    ),
                  ),
                  child: Container(
                    width: getHorizontalSize(
                      380.00,
                    ),
                    child: PinCodeTextField(
                      appContext: context,
                      length: 4,
                      obscureText: false,
                      backgroundColor: Colors.transparent,
                      obscuringCharacter: '*',
                      keyboardType: TextInputType.number,
                      autoDismissKeyboard: true,
                      enableActiveFill: true,
                      onChanged: (value) {},
                      textStyle: TextStyle(
                        fontSize: getFontSize(
                          24.0,
                        ),
                        color: ColorConstant.gray900,
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
                            12.00,
                          ),
                        ),
                        selectedFillColor: isDark
                            ? ColorConstant.darkTextField
                            : ColorConstant.gray100,
                        activeFillColor: isDark
                            ? ColorConstant.darkTextField
                            : ColorConstant.gray100,
                        inactiveFillColor: isDark
                            ? ColorConstant.darkTextField
                            : ColorConstant.gray100,
                        inactiveColor: isDark
                            ? ColorConstant.darkButton
                            : ColorConstant.gray300,
                        selectedColor: ColorConstant.greenA700,
                        activeColor: isDark
                            ? ColorConstant.darkButton
                            : ColorConstant.gray300,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: getHorizontalSize(
                      10.00,
                    ),
                    top: getVerticalSize(
                      60.00,
                    ),
                    right: getHorizontalSize(
                      10.00,
                    ),
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Resend code in ',
                          style: TextStyle(
                            color:
                                isDark ? Colors.white : ColorConstant.gray900,
                            fontSize: getFontSize(
                              18,
                            ),
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.20,
                          ),
                        ),
                        TextSpan(
                          text: '53',
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
                            color:
                                isDark ? Colors.white : ColorConstant.gray900,
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
                Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      10.00,
                    ),
                    top: getVerticalSize(
                      236.50,
                    ),
                    right: getHorizontalSize(
                      10.00,
                    ),
                    bottom: getVerticalSize(
                      20.00,
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                LightCreateNewPasswordScreen()),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: getVerticalSize(
                        58.00,
                      ),
                      width: size.width,
                      decoration: BoxDecoration(
                        color: ColorConstant.greenA700,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            29.00,
                          ),
                        ),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: ColorConstant.greenA700,
                        //     spreadRadius: getHorizontalSize(
                        //       5.00,
                        //     ),
                        //     blurRadius: getHorizontalSize(
                        //       7.00,
                        //     ),
                        //     offset: Offset(
                        //       0,
                        //       4,
                        //     ),
                        //   ),
                        // ],
                      ),
                      child: Text(
                        "Verify",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ColorConstant.whiteA700,
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
