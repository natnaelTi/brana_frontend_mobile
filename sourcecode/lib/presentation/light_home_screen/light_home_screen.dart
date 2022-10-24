import 'package:animate_do/animate_do.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hearme/presentation/light_artist_details_screen/light_artist_details_screen.dart';
import 'package:hearme/presentation/light_charts_screen/light_charts_screen.dart';
import 'package:hearme/presentation/light_notification_music_screen/light_notification_music_screen.dart';
import 'package:hearme/presentation/light_popular_artists_screen/light_popular_artists_screen.dart';
import 'package:hearme/presentation/light_search_type_keyword_screen/light_search_type_keyword_screen.dart';
import 'package:hearme/presentation/light_song_details_screen/light_song_details_screen.dart';
import 'package:hearme/presentation/light_trending_now_screen/light_trending_now_screen.dart';
import '../light_home_screen/widgets/listprice1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

class LightHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
bool isRtl = context.locale==Constants.arLocal;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
              Container(
                          height: getVerticalSize(55),
                          width: size.width,
                          margin: getMargin(
                            top: 16,
                            left: 24,
                            right: 24,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 2,
                                      bottom: 2,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          24.00,
                                        ),
                                      ),
                                      child: CommonImageView(
                                        imagePath: ImageConstant.imgEllipse80X80,
                                        height: getSize(
                                          48.00,
                                        ),
                                        width: getSize(
                                          48.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                 SizedBox(
                                  width: getHorizontalSize(20),
                                 ),
                                  Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Good Morning 👋",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign:   TextAlign.start,
                                          style: TextStyle(
                                            color:isDark?Colors.white: ColorConstant.gray600,
                                            fontSize: getFontSize(
                                              16,
                                            ),
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0.20,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 6,
                                            right: 0,
                                          ),
                                          child: Text(
                                            "Andrew Ainsley",
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
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                             
                             
                             
                              Row(
                                children: [
                                  InkWell(
                                    onTap: (){
                                      Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)
                                          =>LightSearchTypeKeywordScreen()),
                                            );
                                    },
                                    child: Padding(
                                      padding: getPadding(
                                        top: 15,
                                        bottom: 14,
                                      ),
                                      child: SvgPicture.asset(
                                         ImageConstant.imgSearchGray900,
                                         color: isDark?Colors.white:Colors.black,
                                        height: getVerticalSize(
                                          22.00,
                                        ),
                                        width: getHorizontalSize(
                                          21.00,
                                          
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: getHorizontalSize(20),
                                  ),
                                  
                                  InkWell(
                                    onTap: (){
                                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>LightNotificationMusicScreen()),
  );
                                    },
                                    child: Padding(
                                      padding: getPadding(
                                        top: 14,
                                        right: 0,
                                        bottom: 14,
                                      ),
                                      child: SvgPicture.asset(
                                       ImageConstant.imgUser22X17,
                                       color: isDark?Colors.white:Colors.black,
                                        height: getVerticalSize(
                                          22.00,
                                        ),
                                        width: getHorizontalSize(
                                          17.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                      
                        
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            width: double.infinity,
                            margin: getMargin(
                              
                              top: 32,
                            ),
                           
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    right: 20,
                                    left: 20
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        "Trending Now",
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
                                          =>LightTrendingNowScreen()),
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
                                                return InkWell(
                                                  onTap: (){
                                                    Navigator.push(
                                                                                  context,
                                                                                  MaterialPageRoute(builder: (context)
                                                                              =>LightSongDetailsScreen()),
                                                                                );
                                                  },
                                                  child: Container(
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.min,
                                                                                          crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                                                                          mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                                                                          children: [
                                                                                            ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      24.00,
                                                    ),
                                                  ),
                                                  child: CommonImageView(
                                                    imagePath:
                                                        ImageConstant.imgImage4,
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
                                                    "Shades of Love - Ania Szarmach",
                                                    maxLines: null,
                                                    textAlign:   TextAlign.center,
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
                                                                                      ),
                                                )   ;
                                             
                                             
                                             
                                              },
                                            ),
                                          ),
                                        ),
                                      
                                    
                                
                               
                               
                                Padding(
                                  padding: getPadding(
                                    top: 32,
                                    right: 20,
                                    left: 20
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        "Popular Artists",
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
                                          =>LightPopularArtistsScreen()),
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
                                                return InkWell(
                                                   onTap: (){
                                                    Navigator.push(
                                                                                  context,
                                                                                  MaterialPageRoute(builder: (context)
                                                                              =>LightArtistDetailsScreen()),
                                                                                );
                                                  },
                                                  child: Container(
                                                    padding: getPadding(
                                                      right:isRtl?0:12,
                                                      left:isRtl?12:0,
                                                
                                                    ),
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.min,
                                                                                          crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                                                                          mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                                                                          children: [
                                                                                            ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      80.00,
                                                    ),
                                                  ),
                                                  child: CommonImageView(
                                                    imagePath:
                                                        ImageConstant.imgImage13,
                                                    height: getSize(
                                                      160.00,
                                                    ),
                                                    width: getSize(
                                                      160.00,
                                                    ),
                                                  ),
                                                                                            ),
                                                                                            Padding(
                                                  padding: getPadding(
                                                    top: 8,
                                                  ),
                                                  child: Text(
                                                    "Ariana Grande",
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
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
                                                  ),
                                                );
                                                                               
                                              },
                                            ),
                                          ),
                                        ),
                                      
                                    
                                Padding(
                                  padding: getPadding(
                                    top: 32,
                                    right: 20,
                                    left: 20,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        "Top Charts",
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
                                      =>LightChartsScreen()),
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
                                              return Listprice1ItemWidget();
                                            },
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
