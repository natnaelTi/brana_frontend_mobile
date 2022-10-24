import 'package:easy_localization/easy_localization.dart';
import 'package:hearme/core/app_export.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../light_forgot_password_filled_otp_screen/light_forgot_password_filled_otp_screen.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LightForgotPasswordMethodScreen extends StatefulWidget {
  bool isChangingPasword;
  LightForgotPasswordMethodScreen({this.isChangingPasword=false});
  @override
  State<LightForgotPasswordMethodScreen> createState() => _LightForgotPasswordMethodScreenState();
}

class _LightForgotPasswordMethodScreenState extends State<LightForgotPasswordMethodScreen> {
  bool smsSelected=true;
  
  bool emailSelected=false;


  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;

    return Scaffold(
      appBar:AppBar(
        elevation: 0,
       
        
        


        title:Text(widget. isChangingPasword?
                          "Change Password":
                          "Forgot Password",
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
             
              
                Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      10.00,
                    ),
                    top: getVerticalSize(
                      43.03,
                    ),
                    right: getHorizontalSize(
                      10.00,
                    ),
                  ),
                  child: Container(
                    height: getVerticalSize(
                      250.00,
                    ),
                    width: getHorizontalSize(
                      275.71,
                    ),
                    child: Image.asset(
                      ImageConstant.forgotPasswordMethod,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    380.00,
                  ),
                  margin: EdgeInsets.only(
                    left: getHorizontalSize(
                      10.00,
                    ),
                    top: getVerticalSize(
                      33.34,
                    ),
                    right: getHorizontalSize(
                      10.00,
                    ),
                  ),
                  child: Text(
                    "Select which contact details should we use to reset your password",
                    maxLines: null,
                    textAlign: TextAlign.start,
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
                      24.00,
                    ),
                    top: getVerticalSize(
                      12.00,
                    ),
                    right: getHorizontalSize(
                      24.00,
                    ),
                  ),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        smsSelected=true;
                        emailSelected=false;
                      });
                    },
                    child: Container(
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            12.00,
                          ),
                          bottom: getVerticalSize(
                            12.00,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color:isDark?ColorConstant.darkTextField: ColorConstant.gray50,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              20.00,
                            ),
                          ),
                        ),
                        child: OutlineGradientButton(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              3.00,
                            ),
                            top: getVerticalSize(
                              3.00,
                            ),
                            right: getHorizontalSize(
                              3.00,
                            ),
                            bottom: getVerticalSize(
                              3.00,
                            ),
                          ),
                          strokeWidth:smsSelected? getHorizontalSize(
                            3.00,
                          ):1,
                          gradient: LinearGradient(
                            begin: Alignment(
                              1.0000000298023233,
                              1.0000000298023233,
                            ),
                            end: Alignment(
                              1.1102230246251565e-16,
                              0,
                            ),
                            colors:smsSelected? [
                              ColorConstant.greenA700,
                              ColorConstant.greenA700,
                            ]:isDark?[
                              ColorConstant.darkButton,
                              ColorConstant.darkButton
                            ]:[
                              ColorConstant.gray200,
                              ColorConstant.gray200,
                            ],
                          ),
                          corners: Corners(
                            topLeft: Radius.circular(
                              20,
                            ),
                            topRight: Radius.circular(
                              20,
                            ),
                            bottomLeft: Radius.circular(
                              20,
                            ),
                            bottomRight: Radius.circular(
                              20,
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                 left: context.locale==Constants.engLocal? getHorizontalSize(
                                              20.00,
                                            ):getHorizontalSize(0),
                                            right: context.locale==Constants.arLocal? getHorizontalSize(
                                              20.00,
                                            ):getHorizontalSize(0),
                                  top: getVerticalSize(
                    24.00,
                                  ),
                                  bottom: getVerticalSize(
                    24.00,
                                  ),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  constraints: BoxConstraints(
                    minHeight: getSize(
                      80.00,
                    ),
                    minWidth: getSize(
                      80.00,
                    ),
                                  ),
                                  padding: EdgeInsets.all(0),
                                  icon: Container(
                    width: getSize(
                      80.00,
                    ),
                    height: getSize(
                      80.00,
                    ),
                    decoration: BoxDecoration(
                      color:isDark?ColorConstant.darkButton: ColorConstant.gray100,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          40.00,
                        ),
                      ),
                    ),
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        26.66,
                      ),
                      top: getVerticalSize(
                        26.66,
                      ),
                      right: getHorizontalSize(
                        26.66,
                      ),
                      bottom: getVerticalSize(
                        26.66,
                      ),
                    ),
                    child: Image.asset(
                      ImageConstant.imgAutolayouthor1,
                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                    20.00,
                                  ),
                                  top: getVerticalSize(
                    39.00,
                                  ),
                                  right: getHorizontalSize(
                    24.00,
                                  ),
                                  bottom: getVerticalSize(
                    39.00,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        right: getHorizontalSize(
                          10.00,
                        ),
                      ),
                      child: Text(
                        "via SMS:",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: ColorConstant.gray600,
                          fontSize: getFontSize(
                            14,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          8.41,
                        ),
                      ),
                      child: Text(
                        "+1 111 ******99",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                         
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.20,
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
                  )
 
               
               
                ),
               Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      24.00,
                    ),
                    top: getVerticalSize(
                      12.00,
                    ),
                    right: getHorizontalSize(
                      24.00,
                    ),
                  ),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        smsSelected=false;
                        emailSelected=true;
                      });
                    },
                    child: Container(
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            12.00,
                          ),
                          bottom: getVerticalSize(
                            12.00,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color:isDark?ColorConstant.darkTextField: ColorConstant.whiteA700,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              20.00,
                            ),
                          ),
                        ),
                        child: OutlineGradientButton(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              3.00,
                            ),
                            top: getVerticalSize(
                              3.00,
                            ),
                            right: getHorizontalSize(
                              3.00,
                            ),
                            bottom: getVerticalSize(
                              3.00,
                            ),
                          ),
                          strokeWidth:emailSelected? getHorizontalSize(
                            3.00,
                          ):1,
                          gradient: LinearGradient(
                            begin: Alignment(
                              1.0000000298023233,
                              1.0000000298023233,
                            ),
                            end: Alignment(
                              1.1102230246251565e-16,
                              0,
                            ),
                            colors:emailSelected? [
                              ColorConstant.greenA700,
                              ColorConstant.greenA700,
                            ]:isDark?[
                              ColorConstant.darkButton,
                              ColorConstant.darkButton,
                            ]:[
                              ColorConstant.gray200,
                              ColorConstant.gray200,
                            ],
                          ),
                          corners: Corners(
                            topLeft: Radius.circular(
                              20,
                            ),
                            topRight: Radius.circular(
                              20,
                            ),
                            bottomLeft: Radius.circular(
                              20,
                            ),
                            bottomRight: Radius.circular(
                              20,
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                left: context.locale==Constants.engLocal? getHorizontalSize(
                                              20.00,
                                            ):getHorizontalSize(0),
                                            right: context.locale==Constants.arLocal? getHorizontalSize(
                                              20.00,
                                            ):getHorizontalSize(0),
                                  top: getVerticalSize(
                    24.00,
                                  ),
                                  bottom: getVerticalSize(
                    24.00,
                                  ),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  constraints: BoxConstraints(
                    minHeight: getSize(
                      80.00,
                    ),
                    minWidth: getSize(
                      80.00,
                    ),
                                  ),
                                  padding: EdgeInsets.all(0),
                                  icon: Container(
                    width: getSize(
                      80.00,
                    ),
                    height: getSize(
                      80.00,
                    ),
                    decoration: BoxDecoration(
                      color:isDark?ColorConstant.darkButton: ColorConstant.gray100,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          40.00,
                        ),
                      ),
                    ),
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        26.66,
                      ),
                      top: getVerticalSize(
                        26.66,
                      ),
                      right: getHorizontalSize(
                        26.66,
                      ),
                      bottom: getVerticalSize(
                        26.66,
                      ),
                    ),
                    child: Image.asset(
                      ImageConstant.imgAutolayouthor2,
                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                    20.00,
                                  ),
                                  top: getVerticalSize(
                    39.00,
                                  ),
                                  right: getHorizontalSize(
                    24.00,
                                  ),
                                  bottom: getVerticalSize(
                    39.00,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        right: getHorizontalSize(
                          10.00,
                        ),
                      ),
                      child: Text(
                        "via Email:",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color:isDark?Colors.white: ColorConstant.gray600,
                          fontSize: getFontSize(
                            14,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          8.41,
                        ),
                      ),
                      child: Text(
                        "and***ley@yourdomain.com",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.20,
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
                  )
 
               
               
                ),
              
               
               
               
               
                Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      10.00,
                    ),
                    top: getVerticalSize(
                      33.33,
                    ),
                    right: getHorizontalSize(
                      10.00,
                    ),
                    bottom: getVerticalSize(
                      20.00,
                    ),
                  ),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>LightForgotPasswordFilledOtpScreen( isChangingPassword:widget.isChangingPasword? true:false)),
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
                        "Continue",
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
