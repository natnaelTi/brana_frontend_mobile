import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';
import '../light_playlist_details_screen/widgets/listsongtitle1_item_widget.dart';

// ignore_for_file: must_be_immutable
class LightDownloadsScreen extends StatelessWidget {
  String title;
  LightDownloadsScreen({required this.title});
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
bool isRtl = context.locale==Constants.arLocal;
    return Scaffold(
      
      body: SafeArea(
        child: Column(
          children: [
             Align(
                alignment: Alignment.center,
                child: Container(
                  width: size.width,
                  margin: getMargin(
                    left: 24,
                    top: 33,
                    right: 24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 4,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
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
                                title,
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
                      Padding(
                        padding: getPadding(
                          top: 3,
                          right: 3,
                          bottom: 2,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CommonImageViewWithDarkOption(
                              isDark: isDark,
                              svgPath: ImageConstant.imgSearchGray900,
                              height: getVerticalSize(
                                22.00,
                              ),
                              width: getHorizontalSize(
                                21.00,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 26,
                              ),
                              child: CommonImageViewWithDarkOption(
                                isDark: isDark,
                                svgPath: ImageConstant.imgMenu21X21,
                                height: getSize(
                                  21.00,
                                ),
                                width: getSize(
                                  21.00,
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
              
            Expanded(

              child: SingleChildScrollView(
                child: Container(
                  padding: getPadding(
                    left: 24,
                      right: 24
                  ),
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                 
                  
                  Padding(
                    padding: getPadding(
                      top: 24,
                      
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
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
                                  2.00,
                                ),
                                blurRadius: getHorizontalSize(
                                  10.00,
                                ),
                                offset: Offset(
                                  0,
                                  4,
                                ),
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 48,
                                  top: 22,
                                  bottom: 21,
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgDollar,
                                  height: getVerticalSize(
                                    13.00,
                                  ),
                                  width: getHorizontalSize(
                                    16.00,
                                  ),
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  left: 17,
                                  top: 18,
                                  right: 46,
                                  bottom: 18,
                                ),
                                decoration: BoxDecoration(),
                                child: Text(
                                  "Shuffle",
                                  overflow: TextOverflow.ellipsis,
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
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color:isDark?ColorConstant.darkButton: ColorConstant.green50,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                29.00,
                              ),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 59,
                                  top: 20,
                                  bottom: 20,
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgEye,
                                  height: getSize(
                                    16.00,
                                  ),
                                  width: getSize(
                                    16.00,
                                  ),
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  left: 17,
                                  top: 18,
                                  right: 57,
                                  bottom: 18,
                                ),
                                decoration: BoxDecoration(),
                                child: Text(
                                  "Play",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color:isDark?Colors.white: ColorConstant.greenA700,
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
                  Container(
                    height: getVerticalSize(
                      1.00,
                    ),
                    width: getHorizontalSize(
                      380.00,
                    ),
                    margin: getMargin(
                      top: 24,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray200,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 23,
                    ),
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 12,
                      itemBuilder: (context, index) {
                        return Listsongtitle1ItemWidget();
                      },
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
    );
  }
  
  onSelected(BuildContext context, int item) {}




}
