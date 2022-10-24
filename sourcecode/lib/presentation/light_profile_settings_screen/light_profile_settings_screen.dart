import 'package:animate_do/animate_do.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/main.dart';
import 'package:hearme/presentation/light_profile_details_screen/light_profile_details_screen.dart';
import 'package:hearme/presentation/light_settings_audio_video_screen/light_settings_audio_video_screen.dart';
import 'package:hearme/presentation/light_settings_data_saver_storage_screen/light_settings_data_saver_storage_screen.dart';
import 'package:hearme/presentation/light_settings_language_screen/light_settings_language_screen.dart';
import 'package:hearme/presentation/light_settings_notification_screen/light_settings_notification_screen.dart';
import 'package:hearme/presentation/light_settings_playback_screen/light_settings_playback_screen.dart';
import 'package:hearme/presentation/light_settings_security_screen/light_settings_security_screen.dart';
import 'package:hearme/presentation/light_subscribe_to_premium_screen/light_subscribe_to_premium_screen.dart';
import 'package:hearme/presentation/logoutbottomsheet_page/logoutbottomsheet_page.dart';
import 'package:hearme/widgets/custom_button.dart';

class LightProfileSettingsScreen extends StatefulWidget {
  @override
  State<LightProfileSettingsScreen> createState() => _LightProfileSettingsScreenState();
}

class _LightProfileSettingsScreenState extends State<LightProfileSettingsScreen> {
  bool darkModeSwitchval=false;

  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
bool isRtl = context.locale==Constants.arLocal;
    return Scaffold(
      
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: size.width,
                child: SingleChildScrollView(
                  child: Container(
                    margin: getMargin(
                      top: 32,
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
                              left: 24,
                              right: 24,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          16.00,
                                        ),
                                      ),
                                      child: CommonImageView(
                                        imagePath:
                                            ImageConstant.imgTypelogodefau,
                                        height: getSize(
                                          32.00,
                                        ),
                                        width: getSize(
                                          32.00,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 16,
                                        top: 1,
                                        bottom: 1,
                                      ),
                                      child: Text(
                                        "Profile",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign:  TextAlign.start,
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
                                Padding(
                                  padding: getPadding(
                                    top: 5,
                                    bottom: 5,
                                  ),
                                  child: CommonImageView(
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
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: double.infinity,
                            margin: getMargin(
                              left: 0,
                              top: 32,
                              right: 0,
                            ),
                           
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        height: getSize(
                                          80.00,
                                        ),
                                        width: getSize(
                                          80.00,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.bottomRight,
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  getHorizontalSize(
                                                    40.00,
                                                  ),
                                                ),
                                                child: CommonImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse80X80,
                                                  height: getSize(
                                                    80.00,
                                                  ),
                                                  width: getSize(
                                                    80.00,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Padding(
                                                padding: getPadding(
                                                  left: 10,
                                                  top: 10,
                                                  right: 1,
                                                  bottom: 1,
                                                ),
                                                child: CommonImageView(
                                                  svgPath: ImageConstant.imgEdit,
                                                  height: getSize(
                                                    16.00,
                                                  ),
                                                  width: getSize(
                                                    16.00,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: getMargin(
                                          left: 20,
                                          top: 14,
                                          right: 56,
                                          bottom: 14,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                right: 10,
                                              ),
                                              child: Text(
                                                "Andrew Ainsley",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign:  TextAlign.start,
                                                style: TextStyle(

                                                  fontSize: getFontSize(
                                                    20,
                                                  ),
                                                  fontFamily: 'Urbanist',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 8,
                                              ),
                                              child: Text(
                                                "andrew_ainsley@yourdomain.com",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign:  TextAlign.start,
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
                                    ],
                                  ),
                                ),
                                Container(
                                  height: getVerticalSize(
                                    230.00,
                                  ),
                                  width: size.width,
                                
                                  margin: getMargin(
                                    top: 0,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                    
                                     Align(
                                                alignment: Alignment.topCenter,
                                                child: Image.asset(ImageConstant.premiumSubscriptionBgImage,
                                                width: size.width,
                                                height: 200,
                                                fit: BoxFit.fill,
                                                ),
      
                                              ),
      
                                    
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          height: getVerticalSize(
                                            185.00,
                                          ),
                                          width: size.width,
                                         
                                          margin: getMargin(
                                            left: 25,
                                            right: 25,
                                            top: 10,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.centerRight,
                                            children: [
                                             
                                          
                                           
                                           
                                            Align(
                                                alignment:
                                                    Alignment.centerLeft,
                                                child: Container( 
                                                  //  color:ColorConstant.greenA700,
                                                  margin: getMargin(
                                                    top: 0,
                                                    right: 0,
                                                    bottom: 22,
                                                    left: 10
                                                  
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding: getPadding(
                                                          right: 10,
                                                        ),
                                                        child: Text(
                                                          "Enjoy All Benefits!",
                                                          overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                          textAlign:
                                                               TextAlign.start,
                                                          style: TextStyle(
                                                            color:
                                                                ColorConstant
                                                                    .whiteA700,
                                                            fontSize:
                                                                getFontSize(
                                                              24,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width:
                                                            getHorizontalSize(
                                                          202.00,
                                                        ),
                                                        margin: getMargin(
                                                          top: 12,
                                                        ),
                                                        child: Text(
                                                          "Enjoy listening songs & podcasts with better audio quality, without restrictions, and without ads.",
                                                          maxLines: null,
                                                          textAlign:
                                                               TextAlign.start,
                                                          style: TextStyle(
                                                            color:
                                                                ColorConstant
                                                                    .whiteA700,
                                                            fontSize:
                                                                getFontSize(
                                                              12,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400,
                                                            letterSpacing:
                                                                0.20,
                                                          ),
                                                        ),
                                                      ),
                                                      CustomButton(
                                                        width: 117,
                                                        text: "Get Premium",
                                                        margin: getMargin(
                                                          top: 12,
                                                          right: 10,
                                                        ),
                                                        variant: ButtonVariant
                                                            .FillWhiteA700,
                                                        fontStyle: ButtonFontStyle
                                                            .UrbanistSemiBold14,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            
                                              InkWell(
                                                onTap: (){
                                                  Navigator.push(context, MaterialPageRoute(builder:
                                                   (context)=>LightSubscribeToPremiumScreen()));
                                                },
                                                child: Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Padding(
                                                    padding: getPadding(
                                                      bottom: 16,
                                                    ),
                                                    child: ClipRRect(
                                                      borderRadius:BorderRadius.circular(25),
                                                      child: CommonImageView(
                                                        imagePath: ImageConstant
                                                            .premiumImage,
                                                        height: getVerticalSize(
                                                          160.00,
                                                        ),
                                                        width: getHorizontalSize(
                                                          188.00,
                                                        ),
                                                      ),
                                                    ),
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
                                FadeInLeft(
                                  child: Container(
                                    margin: getMargin(
                                      left: 20,
                                      right: 20
                                    ),
                                    child: Column(
                                      
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: InkWell(
                                            onTap:(){
                                              Navigator.push(
                                                      context,
                                                      MaterialPageRoute(builder: (context)
                                                  =>LightProfileDetailsScreen(isArtist: false,)),
                                                    );
                                            } ,
                                            child: Padding(
                                              padding: getPadding(
                                                left: 5,
                                                top: 10,
                                                bottom: 10,
                                                right: 7,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 1,
                                                          bottom: 1,
                                                        ),
                                                        child: CommonImageViewWithDarkOption(
                                                          isDark: isDark,
                                                          
                                                          svgPath: ImageConstant.imgUser22X15,
                                                          height: getVerticalSize(
                                                            22.00,
                                                          ),
                                                          width: getHorizontalSize(
                                                            15.00,
                                                          ),
                                                        ),
                                                      ),
                                                
                                                SizedBox(width: getHorizontalSize(20)),
                                                 
                                                      Text(
                                                        "Profile",
                                                        overflow: TextOverflow.ellipsis,
                                                        textAlign:  TextAlign.start,
                                                        style: TextStyle(
                                                           
                                                          fontSize: getFontSize(
                                                            18,
                                                          ),
                                                          fontFamily: 'Urbanist',
                                                          fontWeight: FontWeight.w600,
                                                          letterSpacing: 0.20,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  
                                                  
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 6,
                                                      bottom: 6,
                                                    ),
                                                    child: CommonImageViewWithDarkOption(
                                                      isRtl: isRtl,
                                                      isDark: isDark,
                                                      svgPath:
                                                          ImageConstant.imgArrowright,
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
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: InkWell(
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: 
                                              (context)=>LightSettingsNotificationScreen()));
                                            },
                                            child: Padding(
                                              padding: getPadding(
                                                left: 5,
                                                top: 10,
                                                bottom: 10,
                                                right: 7,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 1,
                                                          bottom: 1,
                                                        ),
                                                        child: CommonImageViewWithDarkOption(
                                                          isDark: isDark,
                                                          svgPath: ImageConstant.imgUser22X17,
                                                          height: getVerticalSize(
                                                            22.00,
                                                          ),
                                                          width: getHorizontalSize(
                                                            17.00,
                                                          ),
                                                        ),
                                                      ),
                                                       SizedBox(width: getHorizontalSize(20)),
                                                                                 
                                                      
                                                      Text(
                                                        "Notification",
                                                        overflow: TextOverflow.ellipsis,
                                                        textAlign:  TextAlign.start,
                                                        style: TextStyle(
                                                           
                                                          fontSize: getFontSize(
                                                            18,
                                                          ),
                                                          fontFamily: 'Urbanist',
                                                          fontWeight: FontWeight.w600,
                                                          letterSpacing: 0.20,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                 
                                                 
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 6,
                                                      bottom: 6,
                                                    ),
                                                    child: CommonImageViewWithDarkOption(
                                                      isDark: isDark,
                                                      isRtl: isRtl,
                                                      svgPath:
                                                          ImageConstant.imgArrowright,
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
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: InkWell(
                                            onTap: (){
                                              Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>LightSettingsAudioVideoScreen()),
  );
                                            },
                                            child: Padding(
                                              padding: getPadding(
                                                left: 5,
                                                top: 10,
                                                bottom: 10,
                                                right: 7,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    children: [
                                                      CommonImageViewWithDarkOption(
                                                        isDark: isDark,
                                                        svgPath: ImageConstant.imgSignal23X18,
                                                        height: getVerticalSize(
                                                          23.00,
                                                        ),
                                                        width: getHorizontalSize(
                                                          18.00,
                                                        ),
                                                      ),
                                                       SizedBox(width: getHorizontalSize(20)),
                                                      Text(
                                                        "Audio & Video",
                                                        overflow: TextOverflow.ellipsis,
                                                        textAlign:  TextAlign.start,
                                                        style: TextStyle(
                                                           
                                                          fontSize: getFontSize(
                                                            18,
                                                          ),
                                                          fontFamily: 'Urbanist',
                                                          fontWeight: FontWeight.w600,
                                                          letterSpacing: 0.20,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                
                                                
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 6,
                                                      bottom: 6,
                                                    ),
                                                    child: CommonImageViewWithDarkOption(
                                                      isDark: isDark,
                                                      isRtl: isRtl,
                                                      svgPath:
                                                          ImageConstant.imgArrowright,
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
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: InkWell(
                                            onTap: (){
                                              Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context)
                                      =>LightSettingsPlaybackScreen()),
                                        );
                                            },
                                            child: Padding(
                                              padding: getPadding(
                                                left: 5,
                                                top: 10,
                                                bottom: 10,
                                                right: 7,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 1,
                                                          bottom: 1,
                                                        ),
                                                        child: CommonImageViewWithDarkOption(
                                                          isDark: isDark,
                                                          svgPath: ImageConstant.imgPlay,
                                                          height: getSize(
                                                            21.00,
                                                          ),
                                                          width: getSize(
                                                            21.00,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(width: getHorizontalSize(20)),
                                                      Text(
                                                        "Playback",
                                                        overflow: TextOverflow.ellipsis,
                                                        textAlign:  TextAlign.start,
                                                        style: TextStyle(
                                                           
                                                          fontSize: getFontSize(
                                                            18,
                                                          ),
                                                          fontFamily: 'Urbanist',
                                                          fontWeight: FontWeight.w600,
                                                          letterSpacing: 0.20,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                 
                                                 
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 6,
                                                      bottom: 6,
                                                    ),
                                                    child: CommonImageViewWithDarkOption(
                                                      isDark: isDark,
                                                      isRtl: isRtl,
                                                      svgPath:
                                                          ImageConstant.imgArrowright,
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
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: InkWell(
                                             onTap: (){
                                              Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context)
                                      =>LightSettingsDataSaverStorageScreen()),
                                        );
                                            },
                                            child: Padding(
                                              padding: getPadding(
                                                left: 5,
                                                top: 10,
                                                bottom: 10,
                                                right: 7,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 1,
                                                          bottom: 1,
                                                        ),
                                                        child: CommonImageViewWithDarkOption(
                                                          isDark: isDark,
                                                          svgPath:
                                                              ImageConstant.imgCheckmark15X15,
                                                          height: getSize(
                                                            21.00,
                                                          ),
                                                          width: getSize(
                                                            21.00,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(width: getHorizontalSize(20)),
                                                 
                                                      Text(
                                                        "Data Saver & Storage",
                                                        overflow: TextOverflow.ellipsis,
                                                        textAlign:  TextAlign.start,
                                                        style: TextStyle(
                                                           
                                                          fontSize: getFontSize(
                                                            18,
                                                          ),
                                                          fontFamily: 'Urbanist',
                                                          fontWeight: FontWeight.w600,
                                                          letterSpacing: 0.20,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                 
                                                 
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 6,
                                                      bottom: 6,
                                                    ),
                                                    child: CommonImageViewWithDarkOption(
                                                      isDark: isDark,
                                                      isRtl: isRtl,
                                                      svgPath:
                                                          ImageConstant.imgArrowright,
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
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: InkWell(
                                             onTap: (){
                                              Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context)
                                      =>LightSettingsSecurityScreen()),
                                        );
                                            },
                                            child: Padding(
                                              padding: getPadding(
                                                left: 5,
                                                top: 10,
                                                bottom: 10,
                                                right: 7,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 1,
                                                          bottom: 1,
                                                        ),
                                                        child: CommonImageViewWithDarkOption(
                                                          isDark: isDark,
                                                          svgPath:
                                                              ImageConstant.imgCheckmark22X18,
                                                          height: getVerticalSize(
                                                            22.00,
                                                          ),
                                                          width: getHorizontalSize(
                                                            18.00,
                                                          ),
                                                        ),
                                                      ),
                                                      
                                                       SizedBox(width: getHorizontalSize(20)),
                                                      Text(
                                                        "Security",
                                                        overflow: TextOverflow.ellipsis,
                                                        textAlign:  TextAlign.start,
                                                        style: TextStyle(
                                                           
                                                          fontSize: getFontSize(
                                                            18,
                                                          ),
                                                          fontFamily: 'Urbanist',
                                                          fontWeight: FontWeight.w600,
                                                          letterSpacing: 0.20,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  
                                                  
                                                  
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 6,
                                                      bottom: 6,
                                                    ),
                                                    child: CommonImageViewWithDarkOption(
                                                      isDark: isDark,
                                                      isRtl: isRtl,
                                                      svgPath:
                                                          ImageConstant.imgArrowright,
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
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: InkWell(
                                            onTap: (){
                                              Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context)
                                  =>LightSettingsLanguageScreen()),
                                    );
                                            },
                                            child: Padding(
                                              padding: getPadding(
                                                left: 5,
                                                top: 10,
                                                bottom: 10,
                                                right: 7,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 1,
                                                          bottom: 1,
                                                        ),
                                                        child: CommonImageViewWithDarkOption(
                                                          isDark: isDark,
                                                          svgPath: ImageConstant.imgMenu1,
                                                          height: getSize(
                                                            21.00,
                                                          ),
                                                          width: getSize(
                                                            21.00,
                                                          ),
                                                        ),
                                                      ),
                                                       SizedBox(width: getHorizontalSize(20)),
                                                      
                                                      Text(
                                                        "Language",
                                                        overflow: TextOverflow.ellipsis,
                                                        textAlign:  TextAlign.start,
                                                        style: TextStyle(
                                                           
                                                          fontSize: getFontSize(
                                                            18,
                                                          ),
                                                          fontFamily: 'Urbanist',
                                                          fontWeight: FontWeight.w600,
                                                          letterSpacing: 0.20,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                 
                                                  Row(
                                                    children: [
                                                      Text(isRtl?"العربية":
                                                        "English (US)",
                                                        overflow: TextOverflow.ellipsis,
                                                        textAlign:  TextAlign.end,
                                                        style: TextStyle(
                                                           
                                                          fontSize: getFontSize(
                                                            18,
                                                          ),
                                                          fontFamily: 'Urbanist',
                                                          fontWeight: FontWeight.w600,
                                                          letterSpacing: 0.20,
                                                        ),
                                                      ),
                                                       SizedBox(width: getHorizontalSize(20)),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 6,
                                                          bottom: 6,
                                                        ),
                                                        child: CommonImageViewWithDarkOption(
                                                          isDark: isDark,
                                                          isRtl: isRtl,
                                                          svgPath:
                                                              ImageConstant.imgArrowright,
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
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: InkWell(
                                            onTap: (){
                                               setState(() {
                                         darkModeSwitchval =  themeManager.themeMode==ThemeMode.dark;
                                       });
                                       themeManager.toggleTheme( themeManager.themeMode==ThemeMode.dark);
                                            },
                                            child: Padding(
                                              padding: getPadding(
                                                left: 5,
                                                top: 10,
                                                bottom: 10,
                                                right: 7,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 4,
                                                          bottom: 3,
                                                        ),
                                                        child: CommonImageViewWithDarkOption(
                                                          isDark: isDark,
                                                          svgPath:
                                                              ImageConstant.imgSignal17X21,
                                                          height: getVerticalSize(
                                                            17.00,
                                                          ),
                                                          width: getHorizontalSize(
                                                            21.00,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(width: getHorizontalSize(20)),
                                                     
                                                      Text(
                                                        "Dark Mode",
                                                        overflow: TextOverflow.ellipsis,
                                                        textAlign:  TextAlign.start,
                                                        style: TextStyle(
                                                           
                                                          fontSize: getFontSize(
                                                            18,
                                                          ),
                                                          fontFamily: 'Urbanist',
                                                          fontWeight: FontWeight.w600,
                                                          letterSpacing: 0.20,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                 
                                                 
                                                  FlutterSwitch(
                                                                                 width: 55.0,
                                                height: 26.0,
                                                activeColor: ColorConstant.greenA700,
                                                inactiveColor:ColorConstant.gray100 ,
                                                valueFontSize: 25.0,
                                                toggleSize: 23.0,
                                                // toggleColor: ColorConstant.bluegray600,
                                                inactiveToggleColor: Colors.white,
                                                borderRadius: 30.0,
                                                padding: 2.0,
                                                
                                                                                 showOnOff: false,
                                                                                 onToggle: (val) {
                                                                                 setState(() {
                                                                                   darkModeSwitchval = val;
                                                                                 });
                                                                                 themeManager.toggleTheme(val);
                                                                                 },
                                                                                  value: themeManager.themeMode==ThemeMode.dark,
                                                             ),
                                               
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: InkWell(
                                             onTap: (){
                       showModalBottomSheet(
                                          context: context,
                                          isScrollControlled: true,
                                          shape: RoundedRectangleBorder(
                                            
                                              borderRadius: BorderRadius.vertical(
                                                top: Radius.circular(20),
                                              )
                                          ),
                                          builder: (context) {
                                            return LogoutbottomsheetPage();
                                          });
                    },
                                            child: Padding(
                                              padding: getPadding(
                                                left: 5,
                                                top: 10,
                                                bottom: 10,
                                                right: 7,
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
                                                      bottom: 1,
                                                    ),
                                                    child: CommonImageView(
                                                     
                                                      svgPath:
                                                          ImageConstant.imgClock21X22,
                                                      height: getVerticalSize(
                                                        21.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        22.00,
                                                      ),
                                                    ),
                                                  ),
                                                   SizedBox(width: getHorizontalSize(20)),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 0,
                                                    ),
                                                    child: Text(
                                                      "Logout",
                                                      overflow: TextOverflow.ellipsis,
                                                      textAlign:  TextAlign.start,
                                                      style: TextStyle(
                                                        color: ColorConstant.redA200,
                                                        fontSize: getFontSize(
                                                          18,
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
         
          
          ],
        ),
      ),
    );
  }
}
