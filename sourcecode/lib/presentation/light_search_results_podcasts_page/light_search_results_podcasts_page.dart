import 'package:hearme/presentation/light_podcaster_details_screen/light_podcaster_details_screen.dart';

import '../light_search_results_podcasts_page/widgets/listpodcasttitle_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

// ignore_for_file: must_be_immutable
class LightSearchResultsPodcastsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "Podcasts & Shows",
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: getPadding(
                top: 20,
                left: 20,
                right: 20
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [


                  InkWell(
                    onTap: (){
                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>LightPodcasterDetailsScreen()),
  );
                    },
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
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
                          Padding(
                            padding: getPadding(
                              top: 8,
                            ),
                            child: Text(
                              "The Jordan Harb...",
                              overflow: TextOverflow.ellipsis,
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
                    ),
                  ),
                 
                 
                  Container(
                    margin: getMargin(
                      left: 12,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              24.00,
                            ),
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.imgImage160X160,
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
                            "Apple Talk",
                            overflow: TextOverflow.ellipsis,
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
                  ),
                  Container(
                    margin: getMargin(
                      left: 12,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              24.00,
                            ),
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.imgImage1,
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
                            "Dr. Death",
                            overflow: TextOverflow.ellipsis,
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
                  ),
                
                
                ],
              ),
            ),
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
                    "Episodes",
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
                      bottom: 0,
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
                right: 0,
              ),
              child: ListView.builder(
                padding: getPadding(
                  left: 20,
                  right: 20,
                  bottom: 20
                ),
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return ListpodcasttitleItemWidget();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
