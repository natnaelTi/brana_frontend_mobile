import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/presentation/light_set_your_fingerprint_screen/light_set_your_fingerprint_screen.dart';
import 'package:hearme/widgets/custom_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class LightCreateNewPinScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isRtl = context.locale==Constants.arLocal;
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return Scaffold(
      
      body: SafeArea(
        child: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
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
                            isBackBtn: true,
                            isRtl: isRtl,
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
                            right: 20,
                          ),
                          child: Text(
                            "Create New PIN",
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
                      width: getHorizontalSize(
                        380.00,
                      ),
                      margin: getMargin(
                        left: 24,
                        top: 125,
                        right: 24,
                      ),
                      child: Text(
                        "Add a PIN number to make your account\nmore secure.",
                        maxLines: null,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          
                          fontSize: getFontSize(
                            18,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w400,
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
                        top: 80,
                        right: 24,
                      ),
                      child:PinCodeTextField(
                                appContext: context,
                                length: 4,
                                obscureText: true,
                                
                                backgroundColor: Colors.transparent,
                                obscuringCharacter: '●',
                                keyboardType: TextInputType.number,
                                autoDismissKeyboard: true,
                                enableActiveFill: true,
                                onChanged: (value) {},
                                pinTheme: PinTheme(
                                  fieldHeight: getHorizontalSize(
                                    64.00,
                                  ),
                                  fieldWidth: getHorizontalSize(
                                    83.00,
                                  ),
                                  shape: PinCodeFieldShape.box,
                                  
                                  borderRadius: BorderRadius.circular(12),
                                  selectedFillColor:isDark?ColorConstant.darkTextField: ColorConstant.gray50,
                                  activeFillColor:isDark?ColorConstant.darkTextField: ColorConstant.gray50,
                                  inactiveFillColor:isDark?ColorConstant.darkTextField: ColorConstant.gray50,
                                  inactiveColor:isDark?ColorConstant.darkTextField:
                                     ColorConstant.gray200,
                                  selectedColor:
                                      ColorConstant.greenA700,
                                  activeColor:isDark?ColorConstant.darkTextField:
                                      ColorConstant.gray200,
                                ),
                              ),
                    
                    ),
                  ),
                  CustomButton(
                    onTap: (){
                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>LightSetYourFingerprintScreen()),
  );
                    },
                    width: 380,
                    text: "Continue",
                    margin: getMargin(
                      left: 24,
                      top: 115,
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
