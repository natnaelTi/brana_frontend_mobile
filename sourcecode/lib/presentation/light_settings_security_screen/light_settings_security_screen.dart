import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/presentation/light_forgot_password_method_screen/light_forgot_password_method_screen.dart';
import 'package:hearme/widgets/custom_button.dart';

class LightSettingsSecurityScreen extends StatefulWidget {
  @override
  State<LightSettingsSecurityScreen> createState() => _LightSettingsSecurityScreenState();
}

class _LightSettingsSecurityScreenState extends State<LightSettingsSecurityScreen> {
  bool switchval1=true;

  bool switchval2=false;

  bool switchval3=true;

  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
bool isRtl = context.locale==Constants.arLocal;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
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
                          child: CommonImageViewWithDarkOption(
                            isDark: isDark,
                            isRtl: isRtl,
                            isBackBtn: true,
      
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
                            "Security",
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
                        top: 33,
                        right: 24,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "Remember me",
                            overflow: TextOverflow.ellipsis,
                            textAlign:   TextAlign.start,
                            style: TextStyle(
                                
                              fontSize: getFontSize(
                                18,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.20,
                            ),
                          ),
                          FlutterSwitch(
                              width: 50.0,
                              height: 24.0,
                              activeColor: ColorConstant.greenA700,
                              inactiveColor: ColorConstant.gray500,
                              valueFontSize: 25.0,
                              toggleSize: 22.0,
                              borderRadius: 25.0,
                              padding: 2.0,
                              showOnOff: false,
                              onToggle: (val) {
                                setState(() {
                                  switchval1 = val;
                                });
                              },
                              value: switchval1,
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
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "Face ID",
                            overflow: TextOverflow.ellipsis,
                            textAlign:   TextAlign.start,
                            style: TextStyle(
                                
                              fontSize: getFontSize(
                                18,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.20,
                            ),
                          ),
                         FlutterSwitch(
                              width: 50.0,
                              height: 24.0,
                              activeColor: ColorConstant.greenA700,
                              inactiveColor: ColorConstant.gray500,
                              valueFontSize: 25.0,
                              toggleSize: 22.0,
                              borderRadius: 25.0,
                              padding: 2.0,
                              showOnOff: false,
                              onToggle: (val) {
                                setState(() {
                                  switchval2 = val;
                                });
                              },
                              value: switchval2,
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
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "Biometric ID",
                            overflow: TextOverflow.ellipsis,
                            textAlign:   TextAlign.start,
                            style: TextStyle(
                                
                              fontSize: getFontSize(
                                18,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.20,
                            ),
                          ),
                          FlutterSwitch(
                              width: 50.0,
                              height: 24.0,
                              activeColor: ColorConstant.greenA700,
                              inactiveColor: ColorConstant.gray500,
                              valueFontSize: 25.0,
                              toggleSize: 22.0,
                              borderRadius: 25.0,
                              padding: 2.0,
                              showOnOff: false,
                              onToggle: (val) {
                                setState(() {
                                  switchval3 = val;
                                });
                              },
                              value: switchval3,
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
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "Google Authenticator",
                            overflow: TextOverflow.ellipsis,
                            textAlign:   TextAlign.start,
                            style: TextStyle(
                                
                              fontSize: getFontSize(
                                18,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.20,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 6,
                              bottom: 6,
                            ),
                            child: CommonImageView(
                              isRtl: isRtl,
                              svgPath: ImageConstant.imgArrowrightGreenA700,
                              height: getVerticalSize(
                                11.00,
                              ),
                              width: getHorizontalSize(
                                5.00,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomButton(
                    width: 380,
                    text: "Change PIN",
                    margin: getMargin(
                      left: 24,
                      top: 32,
                      right: 24,
                    ),
                    variant: ButtonVariant.FillGreen50,
                    shape: ButtonShape.CircleBorder29,
                    padding: ButtonPadding.PaddingAll18,
                    fontStyle: ButtonFontStyle.UrbanistRomanBold16GreenA700,
                    alignment: Alignment.center,
                  ),
                  CustomButton(
                    width: 380,
                    text: "Change Password",
                    margin: getMargin(
                      left: 24,
                      top: 24,
                      right: 24,
                      bottom: 20,
      
                    ),
                    onTap: (){
                      Navigator.push(
          context,
          MaterialPageRoute(builder: (context)
       =>LightForgotPasswordMethodScreen(isChangingPasword: true,)),
        );
                    },
                    variant: ButtonVariant.FillGreen50,
                    shape: ButtonShape.CircleBorder29,
                    padding: ButtonPadding.PaddingAll18,
                    fontStyle: ButtonFontStyle.UrbanistRomanBold16GreenA700,
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
