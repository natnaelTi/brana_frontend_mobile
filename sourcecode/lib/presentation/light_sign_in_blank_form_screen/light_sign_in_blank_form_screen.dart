import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/presentation/home.dart';
import 'package:hearme/presentation/light_forgot_password_method_screen/light_forgot_password_method_screen.dart';
import 'package:hearme/presentation/light_sign_up_blank_form_screen/light_sign_up_blank_form_screen.dart';
import 'package:hearme/widgets/custom_button.dart';
import 'package:hearme/widgets/custom_checkbox.dart';
import 'package:hearme/widgets/custom_text_form_field.dart';

class LightSignInBlankFormScreen extends StatefulWidget {
  @override
  State<LightSignInBlankFormScreen> createState() => _LightSignInBlankFormScreenState();
}

class _LightSignInBlankFormScreenState extends State<LightSignInBlankFormScreen> {
  bool checkbox = false;

  bool obsecure=true;

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
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 28,
                      top: 40,
                      right: 28,
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
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        top: 59,
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
                        top: 43,
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
                    hintText: "Email",
                    margin: getMargin(
                      left: 24,
                      top: 43,
                      right: 24,
                    ),
                    fontStyle: TextFormFieldFontStyle.UrbanistRegular14,
                    alignment: Alignment.center,
                    prefix: Container(
                      margin: getMargin(
                        left: 21,
                        top: 22,
                        right: 13,
                        bottom: 22,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgExcludeGray500,
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
                    hintText: "Password",
                    margin: getMargin(
                      left: 24,
                      top: 20,
                      right: 24,
                    ),
                    fontStyle: TextFormFieldFontStyle.UrbanistRegular14,
                    textInputAction: TextInputAction.done,
                    alignment: Alignment.center,
                    prefix: Container(
                      margin: getMargin(
                        left: 18,
                        top: 21,
                        right: 18,
                        bottom: 21,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgLock,
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
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            obsecure=!obsecure;
                          });
                        },
                        child:
                         SvgPicture.asset(
           obsecure?ImageConstant.visibilityoff: ImageConstant.visibilityOn,
           color: ColorConstant.gray500,
           
            
          ),
                        
                      
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
                    isObscureText: obsecure,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: CustomCheckbox(
                      alignment: Alignment.center,
                      text: "Remember me",
                    
                      iconSize: 24,
                      value: checkbox,
                      padding: getPadding(
                        left: 24,
                        top: 20,
                        right: 24,
                      ),
                      onChange: (value) {
                        checkbox =!checkbox;
                        setState(() {
                          
                        });
                      },
                    ),
                  ),
                  CustomButton(
                    width: 380,
                    text: "Sign in",
                    margin: getMargin(
                      left: 24,
                      top: 20,
                      right: 24,
                    ),
                    onTap: (){
                    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
    Home()), (Route<dynamic> route) => false);
                    },
                    variant: ButtonVariant.FillGreen700,
                    shape: ButtonShape.CircleBorder29,
                    padding: ButtonPadding.PaddingAll18,
                    fontStyle: ButtonFontStyle.UrbanistRomanBold16,
                    alignment: Alignment.center,
                  ),
                   Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>LightForgotPasswordMethodScreen()),
  );
                      },
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
                              right: 16
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
                              right: 20
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
                              left: 0,
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
                        top: 36,
                        right: 24,
                        bottom: 48,
                      ),
                      child: InkWell(
                        onTap: (){
                         Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)
                      =>LightSignUpBlankFormScreen()),
                        );
                        },

                          child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
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
