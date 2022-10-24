import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:hearme/core/app_export.dart';

class LightSettingsDataSaverStorageScreen extends StatefulWidget {
  @override
  State<LightSettingsDataSaverStorageScreen> createState() => _LightSettingsDataSaverStorageScreenState();
}

class _LightSettingsDataSaverStorageScreenState extends State<LightSettingsDataSaverStorageScreen> {
  bool switchval1=true;
  bool switchval2=true;
  bool switchval3=true;


  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
bool isRtl = context.locale==Constants.arLocal;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: size.width,
              margin: getMargin(
                left: 24,
                top: 33,
                right: 24,
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
                      "Data Saver & Storage",
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
                        "Data Saver",
                        overflow: TextOverflow.ellipsis,
                        textAlign:   TextAlign.start,
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
                          top: 24,
                          right: 24,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Audio Quality",
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
                                  Container(
                                    width: getHorizontalSize(
                                      316.00,
                                    ),
                                    margin: getMargin(
                                      top: 4,
                                    ),
                                    child: Text(
                                      "Sets your audio quality to low (24kbit/s) and disables artist canvases.",
                                      maxLines: null,
                                      textAlign:   TextAlign.start,
                                      style: TextStyle(
                                           
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.20,
                                      ),
                                    ),
                                  ),
                                ],
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
                    Padding(
                      padding: getPadding(
                        left: 24,
                        top: 24,
                        right: 24,
                      ),
                      child: Text(
                        "Podcasts",
                        overflow: TextOverflow.ellipsis,
                        textAlign:   TextAlign.start,
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
                          top: 24,
                          right: 24,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Download Audio Only",
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
                                      top: 4,
                                      right: 10,
                                    ),
                                    child: Text(
                                      "Save video podcasts as audio only.",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign:   TextAlign.start,
                                      style: TextStyle(
                                           
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.20,
                                      ),
                                    ),
                                  ),
                                ],
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
                          top: 24,
                          right: 24,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Stream Audio Only",
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
                                  Container(
                                    width: getHorizontalSize(
                                      316.00,
                                    ),
                                    margin: getMargin(
                                      top: 4,
                                    ),
                                    child: Text(
                                      "Play video podcasts as audio only when not connected on Wi-Fi.",
                                      maxLines: null,
                                      textAlign:   TextAlign.start,
                                      style: TextStyle(
                                           
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.20,
                                      ),
                                    ),
                                  ),
                                ],
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
                    Padding(
                      padding: getPadding(
                        left: 24,
                        top: 24,
                        right: 24,
                      ),
                      child: Text(
                        "Storage",
                        overflow: TextOverflow.ellipsis,
                        textAlign:   TextAlign.start,
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
                          top: 24,
                          right: 24,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              "Other Apps",
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
                            Row(
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 20,
                                    right: 20
                                  ),
                                  child: Text(
                                    "75.4 GB",
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
                          top: 24,
                          right: 24,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              "Cache",
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
                            Row(
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 20,
                                    right: 20
                                  ),
                                  child: Text(
                                    "120.6 MB",
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
                          top: 24,
                          right: 24,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              "Free Space",
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
                            Row(
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 20,
                                    right: 20
                                  ),
                                  child: Text(
                                    "50.5 GB",
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
                          top: 24,
                          right: 24,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Remove All Downloads",
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
                                  Container(
                                    width: getHorizontalSize(
                                      340.00,
                                    ),
                                    margin: getMargin(
                                      top: 4,
                                    ),
                                    child: Text(
                                      "Remove all of the Hearme content you have downloaded for offline uses.",
                                      maxLines: null,
                                      textAlign:   TextAlign.start,
                                      style: TextStyle(
                                           
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 28,
                                bottom: 28,
                              ),
                              child: CommonImageView(
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
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 24,
                          top: 24,
                          right: 24,
                          bottom: 74,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Clear Cache",
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
                                  Container(
                                    width: getHorizontalSize(
                                      340.00,
                                    ),
                                    margin: getMargin(
                                      top: 4,
                                    ),
                                    child: Text(
                                      "Free up storage without removing your downloaded contents.",
                                      maxLines: null,
                                      textAlign:   TextAlign.start,
                                      style: TextStyle(
                                           
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 28,
                                bottom: 28,
                              ),
                              child: CommonImageView(
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
