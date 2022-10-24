import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/presentation/light_sign_in_blank_form_screen/light_sign_in_blank_form_screen.dart';
import 'package:hearme/presentation/light_sign_up_blank_form_screen/light_sign_up_blank_form_screen.dart';

class LightLetsYouInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        28.08,
                      ),
                      top: getVerticalSize(
                        40.42,
                      ),
                      right: getHorizontalSize(
                        28.08,
                      ),
                    ),
                    child: Container(
                      height: getVerticalSize(
                        15.81,
                      ),
                      width: getHorizontalSize(
                        19.25,
                      ),
                      child:GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back,color: isDark?Colors.white:Colors.black,))
                    ),
                  
                  
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          84.96,
                        ),
                        top: getVerticalSize(
                          47.27,
                        ),
                        right: getHorizontalSize(
                          84.96,
                        ),
                      ),
                      child: Container(
                        height: getVerticalSize(
                          200.00,
                        ),
                        width: getHorizontalSize(
                          237.04,
                        ),
                        child: SvgPicture.asset(
                          ImageConstant.imgFrame200X237,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  FadeInUp(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                24.00,
                              ),
                              top: getVerticalSize(
                                31.60,
                              ),
                              right: getHorizontalSize(
                                24.00,
                              ),
                            ),
                            child: Text(
                              "Let’s you in",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                             
                                fontSize: getFontSize(
                                  48,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.only(
                              left: getHorizontalSize(
                                24.00,
                              ),
                              top: getVerticalSize(
                                31.60,
                              ),
                              right: getHorizontalSize(
                                24.00,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color:isDark?ColorConstant.darkTextField: ColorConstant.gray50,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  16.00,
                                ),
                              ),
                              border: Border.all(
                                color:isDark?ColorConstant.darkButton: ColorConstant.gray200,
                                width: getHorizontalSize(
                                  1.00,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                // Container(
                                //   height: getSize(
                                //     24.00,
                                //   ),
                                //   width: getSize(
                                //     24.00,
                                //   ),
                                //   margin: EdgeInsets.only(
                                //     top: getVerticalSize(
                                //       18.00,
                                //     ),
                                //     bottom: getVerticalSize(
                                //       18.00,
                                //     ),
                                //   ),
                                //   child: Card(
                                //     clipBehavior: Clip.antiAlias,
                                //     elevation: 0,
                                //     margin: EdgeInsets.all(0),
                                //     shape: RoundedRectangleBorder(
                                //       borderRadius: BorderRadius.circular(
                                //         getHorizontalSize(
                                //           12.00,
                                //         ),
                                //       ),
                                //     ),
                                //     child: Stack(
                                //       children: [
                                //         Align(
                                //           alignment: Alignment.bottomCenter,
                                //           child: Padding(
                                //             padding: EdgeInsets.only(
                                //               left: getHorizontalSize(
                                //                 7.03,
                                //               ),
                                //               top: getVerticalSize(
                                //                 10.00,
                                //               ),
                                //               right: getHorizontalSize(
                                //                 6.47,
                                //               ),
                                //             ),
                                //             child: Container(
                                //               height: getVerticalSize(
                                //                 17.89,
                                //               ),
                                //               width: getHorizontalSize(
                                //                 10.50,
                                //               ),
                                //               child: SvgPicture.asset(
                                //                 ImageConstant.imgVector50,
                                //                 fit: BoxFit.fill,
                                //               ),
                                //             ),
                                //           ),
                                //         ),
                                //       ],
                                //     ),
                                //   ),
                                // ),
                               
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                  
                                  children: [
                                      Padding(
                                  padding: EdgeInsets.only(
                                    top: getVerticalSize(
                                      18.00,
                                    ),
                                    bottom: getVerticalSize(
                                      18.00,
                                    ),
                                  ),
                                  child: Container(
                                    height: getVerticalSize(
                                      24.00,
                                    ),
                                    width: getHorizontalSize(
                                      23.04,
                                    ),
                                    child: Image.asset(
                                      ImageConstant.facebook,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                               
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          12.00,
                                        ),
                                        right: getHorizontalSize(
                                          12.00,
                                        ),
                                        top: getVerticalSize(
                                          19.00,
                                        ),
                                        bottom: getVerticalSize(
                                          19.00,
                                        ),
                                      ),
                                      child: Text(
                                        "Continue with Facebook",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                         
                                          fontSize: getFontSize(
                                            16,
                                          ),
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 0.20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.only(
                              left: getHorizontalSize(
                                24.00,
                              ),
                              top: getVerticalSize(
                                16.00,
                              ),
                              right: getHorizontalSize(
                                24.00,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color:isDark?ColorConstant.darkTextField: ColorConstant.gray50,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  16.00,
                                ),
                              ),
                              border: Border.all(
                                color:isDark?ColorConstant.darkButton: ColorConstant.gray200,
                                width: getHorizontalSize(
                                  1.00,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: getVerticalSize(
                                      18.00,
                                    ),
                                    bottom: getVerticalSize(
                                      18.00,
                                    ),
                                  ),
                                  child: Container(
                                    height: getVerticalSize(
                                      24.00,
                                    ),
                                    width: getHorizontalSize(
                                      23.04,
                                    ),
                                    child: SvgPicture.asset(
                                      ImageConstant.google,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                               
                               
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      12.00,
                                    ),
                                      right: getHorizontalSize(
                                      12.00,
                                    ),
                                    top: getVerticalSize(
                                      19.00,
                                    ),
                                    bottom: getVerticalSize(
                                      19.00,
                                    ),
                                  ),
                                  child: Text(
                                    "Continue with Google",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                     
                                      fontSize: getFontSize(
                                        16,
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
                          child: Container(
                            margin: EdgeInsets.only(
                              left: getHorizontalSize(
                                24.00,
                              ),
                              top: getVerticalSize(
                                16.00,
                              ),
                              right: getHorizontalSize(
                                24.00,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color:isDark?ColorConstant.darkTextField: ColorConstant.gray50,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  16.00,
                                ),
                              ),
                              border: Border.all(
                                color:isDark?ColorConstant.darkButton: ColorConstant.gray200,
                                width: getHorizontalSize(
                                  1.00,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: getVerticalSize(
                                      18.00,
                                    ),
                                    bottom: getVerticalSize(
                                      18.00,
                                    ),
                                  ),
                                  child: Container(
                                    height: getVerticalSize(
                                      24.00,
                                    ),
                                    width: getHorizontalSize(
                                      19.50,
                                    ),
                                    child: SvgPicture.asset(
                                      ImageConstant.apple,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      14.25,
                                    ),
                                    right: getHorizontalSize(
                                      14.25,
                                    ),
                                    top: getVerticalSize(
                                      19.00,
                                    ),
                                    bottom: getVerticalSize(
                                      19.00,
                                    ),
                                  ),
                                  child: Text(
                                    "Continue with Apple",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                     
                                      fontSize: getFontSize(
                                        16,
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
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                24.00,
                              ),
                              top: getVerticalSize(
                                34.00,
                              ),
                              right: getHorizontalSize(
                                24.00,
                              ),
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
                                    155.00,
                                  ),
                                  margin: EdgeInsets.only(
                                    top: getVerticalSize(
                                      12.50,
                                    ),
                                    bottom: getVerticalSize(
                                      11.50,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.gray200,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      16.00,
                                    ),
                                  ),
                                  child: Text(
                                    "or",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color:isDark?Colors.white: ColorConstant.gray700,
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
                                    155.00,
                                  ),
                                  margin: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      16.00,
                                    ),
                                    top: getVerticalSize(
                                      12.50,
                                    ),
                                    bottom: getVerticalSize(
                                      11.50,
                                    ),
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
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                24.00,
                              ),
                              top: getVerticalSize(
                                34.00,
                              ),
                              right: getHorizontalSize(
                                24.00,
                              ),
                            ),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context)
                                  =>LightSignInBlankFormScreen()),
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
                                  boxShadow: [
                                    BoxShadow(
                                      color: ColorConstant.greenA7003f,
                                      spreadRadius: getHorizontalSize(
                                        5.00,
                                      ),
                                      blurRadius: getHorizontalSize(
                                        7.00,
                                      ),
                                      offset: Offset(
                                        0,
                                        4,
                                      ),
                                    ),
                                  ],
                                ),
                                child: Text(
                                  "Sign in with password",
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
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                24.00,
                              ),
                              top: getVerticalSize(
                                31.70,
                              ),
                              right: getHorizontalSize(
                                24.00,
                              ),
                              bottom: getVerticalSize(
                                48.21,
                              ),
                            ),
                            child: GestureDetector(
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
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Don’t have an account?",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.right,
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
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        8.00,
                                      ),
                                    ),
                                    child: Text(
                                      "Sign up",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
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
                
                
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
