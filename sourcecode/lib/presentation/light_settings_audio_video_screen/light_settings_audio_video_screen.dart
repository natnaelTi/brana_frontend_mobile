import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:hearme/core/app_export.dart';

class LightSettingsAudioVideoScreen extends StatefulWidget {
  @override
  State<LightSettingsAudioVideoScreen> createState() =>
      _LightSettingsAudioVideoScreenState();
}

class _LightSettingsAudioVideoScreenState
    extends State<LightSettingsAudioVideoScreen> {
  bool switchval1 = true;

  bool switchval2 = true;

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    bool isRtl = context.locale == Constants.arLocal;
    return Scaffold(
      body: SafeArea(
        child: Column(
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
                      isBackBtn: true,
                      isDark: isDark,
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
                    padding: getPadding(left: 20, right: 20),
                    child: Text(
                      "Audio & Video",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
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
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 24,
                        top: 33,
                        right: 24,
                      ),
                      child: Text(
                        "Audio Quality",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: getFontSize(
                            20,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
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
                              "Wi-Fi Streaming",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: getFontSize(
                                  18,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.20,
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: getPadding(left: 20, right: 20),
                                  child: Text(
                                    "High",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.end,
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
                                Padding(
                                  padding: getPadding(
                                    left: 0,
                                    top: 6,
                                    bottom: 6,
                                  ),
                                  child: CommonImageViewWithDarkOption(
                                    isDark: isDark,
                                    isRtl: isRtl,
                                    svgPath: ImageConstant.imgArrowright,
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
                              "Data Cellular Streaming",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: getFontSize(
                                  18,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.20,
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: getPadding(left: 20, right: 20),
                                  child: Text(
                                    "Automatic",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.end,
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
                                Padding(
                                  padding: getPadding(
                                    left: 0,
                                    top: 6,
                                    bottom: 6,
                                  ),
                                  child: CommonImageViewWithDarkOption(
                                    isDark: isDark,
                                    isRtl: isRtl,
                                    svgPath: ImageConstant.imgArrowright,
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
                              "Auto Adjust Quality",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
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
                              toggleSize: 25.0,
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
                              "Download",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: getFontSize(
                                  18,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.20,
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 20,
                                    right: 20
                                  ),
                                  child: Text(
                                    "Normal",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.end,
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
                                Padding(
                                  padding: getPadding(
                                    left: 0,
                                    top: 6,
                                    bottom: 6,
                                  ),
                                  child: CommonImageViewWithDarkOption(
                                    isDark: isDark,
                                    isRtl: isRtl,
                                    svgPath: ImageConstant.imgArrowright,
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
                              "Download Only Using Data Cellular",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
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
                              toggleSize: 25.0,
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
                              "Equalizer",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
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
                              child: CommonImageViewWithDarkOption(
                                isDark: isDark,
                                isRtl: isRtl,
                                svgPath: ImageConstant.imgArrowright,
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
                    Padding(
                      padding: getPadding(
                        left: 24,
                        top: 32,
                        right: 24,
                      ),
                      child: Text(
                        "Video Quality",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: getFontSize(
                            20,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
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
                              "Wi-Fi Streaming",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: getFontSize(
                                  18,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.20,
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 20,
                                    right: 20
                                  ),
                                  child: Text(
                                    "High",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.end,
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
                                Padding(
                                  padding: getPadding(
                                    left: 0,
                                    top: 6,
                                    bottom: 6,
                                  ),
                                  child: CommonImageViewWithDarkOption(
                                    isDark: isDark,
                                    isRtl: isRtl,
                                    svgPath: ImageConstant.imgArrowright,
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
                          bottom: 250,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              "Data Cellular Streaming",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: getFontSize(
                                  18,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.20,
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 20,
                                    right: 20
                                  ),
                                  child: Text(
                                    "Medium",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.end,
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
                                Padding(
                                  padding: getPadding(
                                    left: 0,
                                    top: 6,
                                    bottom: 6,
                                  ),
                                  child: CommonImageViewWithDarkOption(
                                    isDark: isDark,
                                    isRtl: isRtl,
                                    svgPath: ImageConstant.imgArrowright,
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
    );
  }
}
