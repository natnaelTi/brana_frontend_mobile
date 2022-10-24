import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

class LightSongPlayLyricsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          margin: getMargin(
            left: 24,
            top: 37,
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
                    right: 3,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 3,
                          bottom: 2,
                        ),
                        child: CommonImageView(
                          svgPath: ImageConstant.imgArrowleft,
                          height: getVerticalSize(
                            15.00,
                          ),
                          width: getHorizontalSize(
                            19.00,
                          ),
                        ),
                      ),
                      CommonImageView(
                        svgPath: ImageConstant.imgMenu21X21,
                        height: getSize(
                          21.00,
                        ),
                        width: getSize(
                          21.00,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: getPadding(
                    top: 37,
                  ),
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SliderTheme(
                          data: SliderThemeData(
                            trackShape: RoundedRectSliderTrackShape(),
                            inactiveTrackColor: ColorConstant.gray300,
                            thumbShape: RoundSliderThumbShape(),
                          ),
                          child: Slider(
                            value: 80.16052,
                            min: 0.0,
                            max: 100.0,
                            onChanged: (value) {},
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 4,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "03:35",
                                overflow: TextOverflow.ellipsis,
                                textAlign:   TextAlign.start,
                                style: TextStyle(
                                     
                                  fontSize: getFontSize(
                                    16,
                                  ),
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.20,
                                ),
                              ),
                              Text(
                                "03:50",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                     
                                  fontSize: getFontSize(
                                    16,
                                  ),
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 26,
                              top: 22,
                              right: 26,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 24,
                                    bottom: 23,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgGroup18X22,
                                    height: getVerticalSize(
                                      18.00,
                                    ),
                                    width: getHorizontalSize(
                                      22.00,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 20,
                                    bottom: 18,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgGroup27X24,
                                    height: getVerticalSize(
                                      27.00,
                                    ),
                                    width: getHorizontalSize(
                                      24.00,
                                    ),
                                  ),
                                ),
                                CommonImageView(
                                  imagePath: ImageConstant.imgExclude,
                                  height: getSize(
                                    66.00,
                                  ),
                                  width: getSize(
                                    66.00,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 20,
                                    bottom: 18,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgGroup27X24,
                                    height: getVerticalSize(
                                      27.00,
                                    ),
                                    width: getHorizontalSize(
                                      24.00,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 24,
                                    bottom: 23,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgGroup18X22,
                                    height: getVerticalSize(
                                      18.00,
                                    ),
                                    width: getHorizontalSize(
                                      22.00,
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
                              left: 26,
                              top: 24,
                              right: 26,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 1,
                                    bottom: 2,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgDashboard,
                                    height: getVerticalSize(
                                      20.00,
                                    ),
                                    width: getHorizontalSize(
                                      23.00,
                                    ),
                                  ),
                                ),
                                CommonImageView(
                                  svgPath: ImageConstant.imgClock24X21,
                                  height: getVerticalSize(
                                    24.00,
                                  ),
                                  width: getHorizontalSize(
                                    21.00,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 2,
                                    bottom: 3,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgMusic18X23,
                                    height: getVerticalSize(
                                      18.00,
                                    ),
                                    width: getHorizontalSize(
                                      23.00,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: getVerticalSize(
                                    18.00,
                                  ),
                                  width: getHorizontalSize(
                                    4.00,
                                  ),
                                  margin: getMargin(
                                    top: 2,
                                    bottom: 3,
                                  ),
                                  decoration: BoxDecoration(
                                       
                                  ),
                                ),
                              ],
                            ),
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
                            top: 25,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.gray200,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 23,
                            right: 10,
                          ),
                          child: Text(
                            "Lyrics",
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
                        Container(
                          width: double.infinity,
                          margin: getMargin(
                            top: 24,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.green50,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                32.00,
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: getHorizontalSize(
                                  316.00,
                                ),
                                margin: getMargin(
                                  left: 32,
                                  top: 32,
                                  right: 32,
                                  bottom: 20,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text:
                                            'Let a nigga brag Pitt\nLegend of the fall took the year like a bandit\nBought mama a crib and a brand new wagon\n',
                                        style: TextStyle(
                                          color: ColorConstant.greenA700,
                                          fontSize: getFontSize(
                                            24,
                                          ),
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w700,
                                          height: 1.83,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            'Now she hit the grocery shop looking lavish\nStar Trek roof in that Wraith of Khan\nGirls get loose when they hear this song\nA hundred on the dash get me close to God\nWe don\'t pray for love, we just pray for cars',
                                        style: TextStyle(
                                            
                                          fontSize: getFontSize(
                                            24,
                                          ),
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w700,
                                          height: 1.83,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign:   TextAlign.start,
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
            ],
          ),
        ),
      ),
    );
  }
}
