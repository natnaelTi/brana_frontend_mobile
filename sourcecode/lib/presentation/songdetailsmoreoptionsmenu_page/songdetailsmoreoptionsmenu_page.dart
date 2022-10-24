import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SongdetailsmoreoptionsmenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        left: 14,
        top: 163,
        right: 14,
        bottom: 163,
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
                left: 20,
                top: 20,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
          ),
          Container(
            height: getVerticalSize(
              1.00,
            ),
            width: getHorizontalSize(
              128.00,
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
              mainAxisSize: MainAxisSize.max,
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
              128.00,
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
              128.00,
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
