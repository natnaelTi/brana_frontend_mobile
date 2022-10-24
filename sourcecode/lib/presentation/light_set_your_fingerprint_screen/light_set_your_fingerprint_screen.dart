import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/presentation/light_follow_artists_screen/light_follow_artists_screen.dart';
import 'package:hearme/widgets/custom_button.dart';

class LightSetYourFingerprintScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
bool isRtl = context.locale==Constants.arLocal;
    return Scaffold(
     
      body: SafeArea(
        child: Container(
          width: size.width,
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Container(
              height: size.height,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: getVerticalSize(50) ,
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
                          ),
                          child: Text(
                            "Set Your Fingerprint",
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
                
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: getHorizontalSize(
                                380.00,
                              ),
                              margin: getMargin(
                                left: 24,
                                top: 85,
                                right: 24,
                              ),
                              child: Text(
                                "Add a fingerprint to make your account\nmore secure.",
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
                                top: 108,
                                right: 24,
                              ),
                              child: CommonImageView(
                                imagePath: ImageConstant.imgVector236X228,
                                height: getVerticalSize(
                                  236.00,
                                ),
                                width: getHorizontalSize(
                                  228.00,
                                ),
                              ),
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
                                top: 107,
                                right: 24,
                              ),
                              child: Text(
                                "Please put your finger on the fingerprint scanner to get started.",
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
                                top: 76,
                                right: 24,
                                bottom: 48,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  CustomButton(
                                    onTap: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context)
                                      =>LightFollowArtistsScreen()),
                                        );
                                    },
                                    width: 184,
                                    text: "Skip",
                                    variant: ButtonVariant.FillGreen50,
                                    shape: ButtonShape.CircleBorder29,
                                    padding: ButtonPadding.PaddingAll18,
                                    fontStyle:
                                        ButtonFontStyle.UrbanistRomanBold16GreenA700,
                                  ),
                                  CustomButton(
                                   onTap: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context)
                                      =>LightFollowArtistsScreen()),
                                        );
                                    },
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
               
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
