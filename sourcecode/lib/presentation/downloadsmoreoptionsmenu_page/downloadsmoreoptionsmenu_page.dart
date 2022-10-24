import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

// ignore_for_file: must_be_immutable
class DownloadsmoreoptionsmenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        left: 10,
        top: 47,
        bottom: 47,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: getPadding(
              left: 22,
              top: 20,
              right: 22,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: getPadding(
                    top: 2,
                    bottom: 2,
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.imgFavorite,
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
                    "Like",
                    overflow: TextOverflow.ellipsis,
                    textAlign:   TextAlign.start,
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
          Container(
            height: getVerticalSize(
              1.00,
            ),
            width: getHorizontalSize(
              153.00,
            ),
            margin: getMargin(
              left: 20,
              top: 16,
              right: 20,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.gray200,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 21,
              top: 15,
              right: 21,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: getPadding(
                    top: 4,
                    bottom: 3,
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
                    left: 13,
                  ),
                  child: Text(
                    "Add to Playlist",
                    overflow: TextOverflow.ellipsis,
                    textAlign:   TextAlign.start,
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
          Container(
            height: getVerticalSize(
              1.00,
            ),
            width: getHorizontalSize(
              153.00,
            ),
            margin: getMargin(
              left: 20,
              top: 16,
              right: 20,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.gray200,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 22,
              top: 15,
              right: 22,
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
                  child: CommonImageView(
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
          Container(
            height: getVerticalSize(
              1.00,
            ),
            width: getHorizontalSize(
              153.00,
            ),
            margin: getMargin(
              left: 20,
              top: 16,
              right: 20,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.gray200,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                left: 20,
                top: 15,
                right: 20,
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
                    child: CommonImageView(
                      svgPath: ImageConstant.imgBag,
                      height: getVerticalSize(
                        15.00,
                      ),
                      width: getHorizontalSize(
                        13.00,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 15,
                    ),
                    child: Text(
                      "Remove Download",
                      overflow: TextOverflow.ellipsis,
                      textAlign:   TextAlign.start,
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
          ),
          Container(
            height: getVerticalSize(
              1.00,
            ),
            width: getHorizontalSize(
              153.00,
            ),
            margin: getMargin(
              left: 20,
              top: 16,
              right: 20,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.gray200,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 24,
              top: 15,
              right: 24,
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
                  child: CommonImageView(
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
          Container(
            height: getVerticalSize(
              1.00,
            ),
            width: getHorizontalSize(
              153.00,
            ),
            margin: getMargin(
              left: 20,
              top: 16,
              right: 20,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.gray200,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 22,
              top: 15,
              right: 22,
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
                  child: CommonImageView(
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
          Container(
            height: getVerticalSize(
              1.00,
            ),
            width: getHorizontalSize(
              153.00,
            ),
            margin: getMargin(
              left: 20,
              top: 16,
              right: 20,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.gray200,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 21,
              top: 15,
              right: 21,
              bottom: 20,
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
                  child: CommonImageView(
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
    );
  }
}
