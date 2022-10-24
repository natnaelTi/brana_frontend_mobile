import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

class LightSettingsPlaybackScreen extends StatefulWidget {
  @override
  State<LightSettingsPlaybackScreen> createState() => _LightSettingsPlaybackScreenState();
}

class _LightSettingsPlaybackScreenState extends State<LightSettingsPlaybackScreen> {
  bool switchval=true;
  
  List<Options>optionsList=[
   Options( title: "Gapless",switchval: true ),
   Options (title: "Automix", switchval: true),
   Options (title: "Allow Explicit Content", switchval: true),
   Options (title: "Show Unplayable Songs", switchval: true),
   Options (title: "Normalize Volume", switchval: true),
   Options (title: "Mono Audio", switchval: true),
   Options (title: "Device Broadcast Status", switchval: true),
   Options (title: "Autoplay on This Device", switchval: true),
  ];

  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
bool isRtl = context.locale==Constants.arLocal;
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: size.width,
              margin: getMargin(
                left: 24,
                right: 24,
                top: 33
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
                      "Playback",
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
              child: ListView.builder(
                padding: getPadding(
                all: 24,

              ),
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: optionsList.length,
                itemBuilder: (context, index) {
                  return  Padding(
                  padding: getPadding(
                    top: 12.0,
                    bottom: 12.0,
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
              optionsList[index].title,
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
                "Turn on play explicit content.",
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
                  toggleSize: 20.0,
                  borderRadius: 25.0,
                  padding: 2.0,
                  showOnOff: false,
                  onToggle: (val) {
                    setState(() {
                      optionsList[index].switchval = !optionsList[index].switchval;
                    });
                  },
                  value: optionsList[index].switchval,
                ),
                     
                  
                    ],
                  ),
                );
              
                },
              ),
            ),
                 
                 
         
         
          ],
        ),
      ),
    );
  }
}

class Options {
  String title;
  bool switchval;
   Options({required this.title,required this.switchval});
}
