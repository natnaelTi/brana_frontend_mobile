import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/presentation/light_podcast_episode_details_screen/light_podcast_episode_details_screen.dart';

// ignore: must_be_immutable
class ListpodcasttitleItemWidget extends StatelessWidget {
  ListpodcasttitleItemWidget();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>LightPodcastEpisodeDetailsScreen()),
  );
      },
      child: Padding(
        padding: getPadding(
          top: 12.0,
          bottom: 12.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  20.00,
                ),
              ),
              child: CommonImageView(
                imagePath: ImageConstant.imgImage116X116,
                height: getSize(
                  116.00,
                ),
                width: getSize(
                  116.00,
                ),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Container(
              margin: getMargin(
                left: 0,
                top: 1,
                bottom: 1,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getHorizontalSize(248),
                    child: Text(
                      "688: A-Rod | Still Having a Ball After All",
                      maxLines: null,
                      textAlign:   TextAlign.start,
                      style: TextStyle(
                           
                        fontSize: getFontSize(
                          18,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 12,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "Twenty Thousand Hertz",
                          overflow: TextOverflow.ellipsis,
                          textAlign:   TextAlign.start,
                          style: TextStyle(
                              
                            fontSize: getFontSize(
                              12,
                            ),
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.20,
                          ),
                        ),
                        SizedBox(
                          width:getFontSize(16),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 0,
                          ),
                          child: Text(
                            "|",
                            overflow: TextOverflow.ellipsis,
                            textAlign:   TextAlign.start,
                            style: TextStyle(
                                
                              fontSize: getFontSize(
                                12,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: getHorizontalSize(16),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 0,
                          ),
                          child: Text(
                            "49:26 mins",
                            overflow: TextOverflow.ellipsis,
                            textAlign:   TextAlign.start,
                            style: TextStyle(
                                
                              fontSize: getFontSize(
                                12,
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
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: getHorizontalSize(
                        245.00,
                      ),
                      margin: getMargin(
                        top: 14,
                        right: 2,
                        bottom: 2,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 2,
                              top: 5,
                              bottom: 5,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                CommonImageView(
                                  svgPath: ImageConstant.imgFavorite,
                                  height: getSize(
                                    15.00,
                                  ),
                                  width: getSize(
                                    15.00,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 23,
                                    top: 2,
                                    bottom: 2,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgMenu,
                                    height: getVerticalSize(
                                      11.00,
                                    ),
                                    width: getHorizontalSize(
                                      16.00,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 23,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgArrowdown,
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
                                    left: 29,
                                    top: 1,
                                    bottom: 1,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgVectorGray900,
                                    height: getVerticalSize(
                                      13.00,
                                    ),
                                    width: getHorizontalSize(
                                      3.00,
                                    ),
                                  ),
                               
                               
                                ),
                             
                             
                              ],
                            ),
                          ),
                          CommonImageView(
                            imagePath: ImageConstant.imgExclude,
                            height: getSize(
                              26.00,
                            ),
                            width: getSize(
                              26.00,
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
    );
  }
}
