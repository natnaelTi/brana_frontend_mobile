import 'package:easy_localization/easy_localization.dart';

import '../light_playlist_details_screen/widgets/listsongtitle1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

class LightPlaylistDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
bool isRtl = context.locale==Constants.arLocal;
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: getMargin(
            left: 24,
            top: 24,
            right: 24,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: size.width,
                  margin: getMargin(
                    left: 4,
                    right: 2,
                    bottom: 24
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 3,
                          bottom: 3,
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
                    ],
                  ),
                ),
              ),
             
             
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            24.00,
                          ),
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.imgImage120X120,
                          height: getSize(
                            120.00,
                          ),
                          width: getSize(
                            120.00,
                          ),
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          top: 11,
                          bottom: 11,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: getPadding(
                                  right: 9,
                                ),
                                child: Text(
                                  "My Favorite Pop Son..",
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
                            ),
                            Padding(
                              padding: getPadding(
                                top: 12,
                                right: 10,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.start,
                                crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    "Playlist",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign:   TextAlign.start,
                                    style: TextStyle(
                                        
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      fontFamily: 'Urbanist',
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.20,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 13,
                                    ),
                                    child: Text(
                                      "|",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign:   TextAlign.start,
                                      style: TextStyle(
                                          
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.20,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 12,
                                    ),
                                    child: Text(
                                      "345 songs",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign:   TextAlign.start,
                                      style: TextStyle(
                                          
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
                            Padding(
                              padding: getPadding(
                                left: 2,
                                top: 13,
                                right: 10,
                                bottom: 2,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.start,
                                crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 1,
                                    ),
                                    child: CommonImageViewWithDarkOption(
                                      isDark: isDark,
                                      svgPath: ImageConstant.imgCheckmark,
                                      height: getSize(
                                        18.00,
                                      ),
                                      width: getSize(
                                        18.00,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 29,
                                      right: 29,
                                      top: 1,
                                    ),
                                    child: CommonImageViewWithDarkOption(
                                      isDark: isDark,
                                      svgPath:
                                          ImageConstant.imgArrowdown18X18,
                                      height: getSize(
                                        18.00,
                                      ),
                                      width: getSize(
                                        18.00,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 0,
                                    ),
                                    child: CommonImageViewWithDarkOption(
                                      isDark: isDark,
                                      svgPath: ImageConstant.imgShare,
                                      height: getSize(
                                        20.00,
                                      ),
                                      width: getSize(
                                        20.00,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: getVerticalSize(
                                      16.00,
                                    ),
                                    width: getHorizontalSize(
                                      4.00,
                                    ),
                                    margin: getMargin(
                                      left: 35,
                                      top: 2,
                                      bottom: 1,
                                    ),
                                    decoration: BoxDecoration(
                                         
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
                  Container(
                    height: getVerticalSize(580),
                    child: Padding(
                      padding: getPadding(
                        top: 23,
                      ),
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Listsongtitle1ItemWidget();
                        },
                      ),
                    ),
                  ),
               
               
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
