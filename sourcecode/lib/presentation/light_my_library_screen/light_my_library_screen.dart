import 'package:animate_do/animate_do.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/presentation/light_albums_screen/light_albums_screen.dart';
import 'package:hearme/presentation/light_artists_singers_screen/light_artists_singers_screen.dart';
import 'package:hearme/presentation/light_downloads_screen/light_downloads_screen.dart';
import 'package:hearme/presentation/light_history_music_screen/light_history_music_screen.dart';
import 'package:hearme/presentation/light_playlists_screen/light_playlists_screen.dart';
import 'package:hearme/presentation/light_podcasts_your_likes_screen/light_podcasts_your_likes_screen.dart';
import 'package:hearme/widgets/my_divider.dart';

class LightMyLibraryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
bool isRtl = context.locale==Constants.arLocal;
    return Scaffold(
      
      body: SafeArea(
        child: Column(
          children: [
             Container(
                                width: size.width,
                                margin: getMargin(
                                  right: 20,
                                  left: 20,
                                  top: 24
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
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
                                            "My Library",
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
                                    Padding(
                                      padding: getPadding(
                                        top: 5,
                                        right: 3,
                                        bottom: 4,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CommonImageViewWithDarkOption(
                                            isDark: isDark,
                                            svgPath:
                                                ImageConstant.imgSearchGray900,
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
                                              svgPath:
                                                  ImageConstant.imgMenu21X21,
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
                             
                             
            Expanded(
              child: Container(
                width: size.width,
                child: SingleChildScrollView(
                  child: Container(
                    margin: getMargin(
                      top: 24,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: getMargin(
                            left: 0,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                             
                             
                              Padding(
                                padding: getPadding(
                                  top: 24,
                                  right: 20,
                                  left: 20
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      "Your History",
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
                                        left: 0,
                                        bottom: 6,
                                      ),
                                      child: InkWell(
                                         onTap: (){
                                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context)
                                    =>LightHistoryMusicScreen()),
                                      );
                                                },
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
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                          height: getVerticalSize(
                                            270.00,
                                          ),
                                         
                                          child: FadeInLeft(
                                            child: ListView.builder(
                                               padding: getPadding(
                                                top: 32,
                                                right: 20,
                                                left: 20,
                                                bottom: 20
                                                
                                              ),
                                              scrollDirection: Axis.horizontal,
                                              physics: BouncingScrollPhysics(),
                                              itemCount: 4,
                                              itemBuilder: (context, index) {
                                                return    Container(
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                  crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                                                                  mainAxisAlignment:
                                              MainAxisAlignment.start,
                                                                                  children: [
                                            ClipRRect(
                                              borderRadius: BorderRadius.circular(
                                                getHorizontalSize(
                                                  24.00,
                                                ),
                                              ),
                                              child: CommonImageView(
                                                imagePath: ImageConstant.imgImage,
                                                height: getSize(
                                                  160.00,
                                                ),
                                                width: getSize(
                                                  160.00,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: getHorizontalSize(
                                                160.00,
                                              ),
                                              margin: getMargin(
                                                top: 8,
                                              ),
                                              child: Text(
                                                "610: Bill Sullivan | Pleased to Meet ...",
                                                maxLines: null,
                                                textAlign:   TextAlign.start,
                                                style: TextStyle(
                                                   
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
                                                                              );
                                                                            
                                                                            
                                             
                                             
                                              },
                                            ),
                                          ),
                                        ),
                                      
                                    
                                
                              
                              Container(
                               
                               
                                margin: getMargin(
                                  top: 32,
                                  right: 20,
                                  left: 20
                                ),
                               child: MyDivider(isDark: isDark),
                              ),
                            
                            
                              FadeInLeft(
                                child: Column(
                                  children: [
                                    InkWell(
                                      onTap: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context)
                                        =>LightPlaylistsScreen()),
                                          );
                                      },
                                      child: Padding(
                                        padding: getPadding(
                                          left: 20,
                                          top: 16,
                                          bottom: 16,
                                          right: 20,
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Padding(
                                                  padding: getPadding(
                                                    top: 3,
                                                    bottom: 2,
                                                  ),
                                                  child: CommonImageViewWithDarkOption(
                                                    isDark: isDark,
                                                    svgPath: ImageConstant.imgDownload,
                                                    height: getVerticalSize(
                                                      22.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      21.00,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 23,
                                                    right: 23,
                                                  ),
                                                  child: Text(
                                                    "Playlists",
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
                                            Padding(
                                              padding: getPadding(
                                                left: 0,
                                                top: 8,
                                                bottom: 8,
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
                                    InkWell(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder:
                                         (context)=>LightDownloadsScreen(title: "Downloads",)));
                                      },
                                      child: Padding(
                                        padding: getPadding(
                                          left: 20,
                                          top: 16,
                                          bottom: 16,
                                          right: 20,
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Padding(
                                                  padding: getPadding(
                                                    top: 3,
                                                    bottom: 3,
                                                  ),
                                                  child: CommonImageViewWithDarkOption(
                                                     isDark: isDark,
                                                    svgPath:
                                                        ImageConstant.imgArrowdown21X21,
                                                    height: getSize(
                                                      21.00,
                                                    ),
                                                    width: getSize(
                                                      21.00,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 23,
                                                    right: 23
                                                  ),
                                                  child: Text(
                                                    "Downloads",
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
                                            Padding(
                                              padding: getPadding(
                                                left: 0,
                                                top: 8,
                                                bottom: 8,
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
                                    InkWell(
                                       onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder:
                                           (context)=>LightPodcastsYourLikesScreen()));
                                        },
                                      child: Padding(
                                        padding: getPadding(
                                          left: 20,
                                          top: 16,
                                          bottom: 16,
                                          right: 20,
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Padding(
                                                  padding: getPadding(
                                                    top: 2,
                                                    bottom: 2,
                                                  ),
                                                  child: CommonImageViewWithDarkOption(
                                                    isDark: isDark,
                                                    svgPath: ImageConstant.imgSignal,
                                                    height: getSize(
                                                      23.00,
                                                    ),
                                                    width: getSize(
                                                      23.00,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 22,
                                                    right: 22,
                                                  ),
                                                  child: Text(
                                                    "Podcasts",
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
                                            Padding(
                                              padding: getPadding(
                                                left: 0,
                                                top: 8,
                                                bottom: 8,
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
                                    InkWell(
                                       onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: 
                                          (context)=>LightAlbumsScreen()));
                                        },
                                      child: Padding(
                                        padding: getPadding(
                                         left: 20,
                                          top: 16,
                                          bottom: 16,
                                          right: 20,
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Padding(
                                                  padding: getPadding(
                                                    top: 3,
                                                    bottom: 3,
                                                  ),
                                                  child: CommonImageViewWithDarkOption(
                                                    isDark: isDark,
                                                    isRtl: isRtl,
                                                    svgPath: ImageConstant.imgPlay,
                                                    height: getSize(
                                                      21.00,
                                                    ),
                                                    width: getSize(
                                                      21.00,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 23,
                                                    right: 23,
                                                  ),
                                                  child: Text(
                                                    "Albums",
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
                                            Padding(
                                              padding: getPadding(
                                                left: 0,
                                                top: 8,
                                                bottom: 8,
                                              ),
                                              child: CommonImageViewWithDarkOption(
                                                isDark: isDark,
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
                                    InkWell(
                                      onTap: (){
                                        Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context)
                               =>LightDownloadsScreen(title: "Songs",)),
                                );
                                      },
                                      child: Padding(
                                        padding: getPadding(
                                         left: 20,
                                          top: 16,
                                          bottom: 16,
                                          right: 20,
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Padding(
                                                  padding: getPadding(
                                                    top: 2,
                                                    bottom: 2,
                                                  ),
                                                  child: CommonImageViewWithDarkOption(
                                                    isDark: isDark,
                                                    svgPath: ImageConstant.imgMusic,
                                                    height: getVerticalSize(
                                                      24.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      22.00,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 23,
                                                    right: 23,
                                                  ),
                                                  child: Text(
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
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 0,
                                                top: 8,
                                                bottom: 8,
                                              ),
                                              child: CommonImageViewWithDarkOption(
                                                isDark: isDark,
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
                                    InkWell(
                                      onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder:(context) =>LightArtistsSingersScreen() ));
                                      },
                                      child: Padding(
                                        padding: getPadding(
                                         left: 20,
                                          top: 16,
                                          bottom: 16,
                                          right: 20,
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Padding(
                                                  padding: getPadding(
                                                    top: 4,
                                                    bottom: 4,
                                                  ),
                                                  child: CommonImageViewWithDarkOption(
                                                    isDark: isDark,
                                                    svgPath: ImageConstant.imgGroup,
                                                    height: getVerticalSize(
                                                      19.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      23.00,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 22,
                                                    right: 22,
                                                  ),
                                                  child: Text(
                                                    "Artists",
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
                                            Padding(
                                              padding: getPadding(
                                                left: 0,
                                                top: 8,
                                                bottom: 8,
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
                                  ],
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
            ),
         
          
          ],
        ),
      ),
    );
  }
}
