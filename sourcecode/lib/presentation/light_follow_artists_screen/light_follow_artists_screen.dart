import 'package:easy_localization/easy_localization.dart';
import 'package:hearme/presentation/home.dart';
import '../light_follow_artists_screen/widgets/listartistname2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/widgets/custom_button.dart';

class LightFollowArtistsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
bool isRtl = context.locale==Constants.arLocal;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Container(
              height:size.height,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: getVerticalSize(50),
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
                            "Follow Artists",
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
                                top: 33,
                                right: 24,
                              ),
                              child: Text(
                                "Follow your favorite artists. Or you can skip it for now.",
                                maxLines: null,
                                textAlign:   TextAlign.start,
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
                         
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 24,
                                top: 24,
                                right: 24,
                              ),
                              child: ListView.builder(
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: 6,
                                itemBuilder: (context, index) {
                                  return Listartistname2ItemWidget();
                                },
                              ),
                            ),
                          ),
                          SizedBox(height: getVerticalSize(20),)
                        ],
                      ),
                    ),
                  ),
                  
                  
                  Container(
                    height: getVerticalSize(130),
                    margin: getMargin(
                      top: 0,
                    ),
                    decoration: BoxDecoration(
                      color:isDark?ColorConstant.darkBg: ColorConstant.whiteA700,
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
                      border: Border.all(
                        color: ColorConstant.gray100,
                        width: getHorizontalSize(
                          1.00,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomButton(
                          onTap: (){
                            Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>Home()),
  );
                          },
                          width: 180,
                          text: "Skip",
                          margin: getMargin(
                            left: 24,
                            top: 24,
                            bottom: 48,
                          ),
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
 =>Home()),
  );
                          },
                          width: 180,
                          text: "Continue",
                          margin: getMargin(
                            left: 12,
                            top: 24,
                            right: 24,
                            bottom: 48,
                          ),
                          variant: ButtonVariant.OutlineGreenA7003f,
                          shape: ButtonShape.CircleBorder29,
                          padding: ButtonPadding.PaddingAll18,
                          fontStyle: ButtonFontStyle.UrbanistRomanBold16,
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
