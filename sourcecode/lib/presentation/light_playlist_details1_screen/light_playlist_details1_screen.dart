import 'package:easy_localization/easy_localization.dart';

import '../light_playlist_details1_screen/widgets/listsongtitle3_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

import '../light_song_play_screen/light_song_play_screen.dart';

class LightPlaylistDetails1Screen extends StatelessWidget {
  @override
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
                        left: 20,
                        right: 20,
                        top: 37
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
                            child: CommonImageViewWithDarkOption(
                                isRtl: isRtl,
                            isBackBtn: true,
                            isDark: isDark,
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
                child: Container(
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
                    
                      
                      Container(
                        width: double.infinity,
                        margin: getMargin(
                          top: 0,
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
                                  left: 65,
                                  right: 65,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      32.00,
                                    ),
                                  ),
                                  child: CommonImageView(
                                    imagePath: ImageConstant.imgImage250X250,
                                    height: getSize(
                                      250.00,
                                    ),
                                    width: getSize(
                                      250.00,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(
                                380.00,
                              ),
                              margin: getMargin(
                                top: 20,
                              ),
                              child: Text(
                                "Ariana Grande - Top Greatest Hits",
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                     
                                  fontSize: getFontSize(
                                    32,
                                  ),
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 12,
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "by Theresa Wilona",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
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
                                  left: 65,
                                  top: 12,
                                  right: 65,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
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
                                        fontWeight: FontWeight.w500,
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
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 0.20,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 12,
                                      ),
                                      child: Text(
                                        "2022",
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
                            ),
                            Padding(
                              padding: getPadding(
                                top: 20,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      left: 2,
                                      top: 13,
                                      bottom: 13,
                                    ),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CommonImageViewWithDarkOption(
                                          isDark: isDark,
                                          svgPath: ImageConstant.imgFavorite,
                                          height: getVerticalSize(
                                            18.00,
                                          ),
                                          width: getHorizontalSize(
                                            19.00,
                                          ),
                                        ),
                                       SizedBox(
                                        width: getHorizontalSize(36),
                                       ),
                                       Padding(
                                          padding: getPadding(
                                            left: 0,
                                            top: 2,
                                            bottom: 1,
                                          ),
                                          child: CommonImageViewWithDarkOption(
                                            isDark: isDark,
                                            svgPath: ImageConstant.imgMenu,
                                            height: getVerticalSize(
                                              14.00,
                                            ),
                                            width: getHorizontalSize(
                                              20.00,
                                            ),
                                          ),
                                        ),
                                    SizedBox(
                                      width: getHorizontalSize(10),
                                    ),
                                    
                                      Theme(
                                        data: Theme.of(context).copyWith(
                                          dividerColor:isDark?ColorConstant.darkButton: ColorConstant.gray200,
                                          iconTheme: IconThemeData(color:isDark?ColorConstant.whiteA700: Colors.black),
                                          textTheme: TextTheme().apply(bodyColor:isDark?ColorConstant.whiteA700: Colors.black
                                          ),
                                        ),
                                        child: PopupMenuButton<int>(
                                          padding: EdgeInsets.only(
                                           right: getHorizontalSize(2)
                                          ),
                                          iconSize: getHorizontalSize(20),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(getHorizontalSize(20)),
                                            ),
                                          ),
                                          color:isDark?ColorConstant.darkBg: ColorConstant.whiteA700,
                                          onSelected: (item) => onSelected(context, item),
                                          itemBuilder: (context) => [
                                            PopupMenuItem<int>(
                          
                                              value: 0,
                                              child:  Container(
                                                child: Padding(
                        padding: getPadding(
                          left: 10,
                          top: 15,
                          right: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
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
                                  16.00,
                                ),
                                width: getHorizontalSize(
                                  11.00,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 16,
                              ),
                              child: Text(
                                "View Artist",
                                overflow: TextOverflow.ellipsis,
                                textAlign:   TextAlign.start,
                                style: TextStyle(
                                     color: isDark?Colors.white:Colors.black,
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
                      
                      
                                             
                                             
                                              ),
                                            ),
                                            PopupMenuDivider(),
                          
                                            PopupMenuItem<int>(
                                              value: 1,
                          
                                              child: Padding(
                          padding: getPadding(
                            left: 10,
                            top: 20,
                            right: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 2,
                                  bottom: 2,
                                ),
                                child: CommonImageViewWithDarkOption(
                                  isDark: isDark,
                                  svgPath: ImageConstant.imgClose15X15,
                                  height: getSize(
                                    15.00,
                                  ),
                                  width: getSize(
                                    15.00,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 14,
                                ),
                                child: Text(
                                  "Don’t Play This",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign:   TextAlign.start,
                                  style: TextStyle(
                                       color: isDark?Colors.white:Colors.black,
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
                       
                       
                                            
                                            )),
                                            PopupMenuDivider(),
                                            
                                          PopupMenuItem(
                                            value: 2,
                                            child:   Padding(
                        padding: getPadding(
                          left: 10,
                          top: 15,
                          right: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 2,
                                bottom: 2,
                              ),
                              child: CommonImageViewWithDarkOption(
                                isDark: isDark,
                                svgPath: ImageConstant.imgPlay,
                                height: getSize(
                                  15.00,
                                ),
                                width: getSize(
                                  15.00,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 14,
                              ),
                              child: Text(
                                "Go to Album",
                                overflow: TextOverflow.ellipsis,
                                textAlign:   TextAlign.start,
                                style: TextStyle(
                                     color:isDark?Colors.white:Colors.black ,
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
                      
                                          ),
                                         PopupMenuDivider(),
                                         PopupMenuItem(
                                          value: 3,
                                          child:  Padding(
                        padding: getPadding(
                          left: 10,
                          top: 15,
                          right: 21,
                          bottom: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 1,
                                bottom: 1,
                              ),
                              child: CommonImageViewWithDarkOption(
                                isDark: isDark,
                                svgPath: ImageConstant.imgShare16X16,
                                height: getSize(
                                  16.00,
                                ),
                                width: getSize(
                                  16.00,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 13,
                              ),
                              child: Text(
                                "Share",
                              
                                overflow: TextOverflow.ellipsis,
                                textAlign:   TextAlign.start,
                                style: TextStyle(
                                     color: isDark?Colors.white:Colors.black,
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
                      )
                                          ],
                                        ),
                                      ),
                                      
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                     onTap: (){
                       Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          LightSongPlayScreen()),
                                );
                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: ColorConstant.greenA700,
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            22.50,
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              left: 27,
                                              top: 14,
                                              bottom: 15,
                                            ),
                                            child: CommonImageView(
                                              svgPath: ImageConstant.imgOffer,
                                              height: getVerticalSize(
                                                15.00,
                                              ),
                                              width: getHorizontalSize(
                                                14.00,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 10,
                                              top: 10,
                                              right: 24,
                                              bottom: 10,
                                            ),
                                            child: Text(
                                              "Play",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: ColorConstant.whiteA700,
                                                fontSize: getFontSize(
                                                  18,
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
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    "Songs",
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
                                  Padding(
                                    padding: getPadding(
                                      bottom: 6,
                                    ),
                                    child: Text(
                                      "See All",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                        color: ColorConstant.greenA700,
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
                            Padding(
                              padding: getPadding(
                                top: 24,
                              ),
                              child: ListView.builder(
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  return Listsongtitle3ItemWidget();
                                },
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
    );
  }
  
  onSelected(BuildContext context, int item) {}
}
