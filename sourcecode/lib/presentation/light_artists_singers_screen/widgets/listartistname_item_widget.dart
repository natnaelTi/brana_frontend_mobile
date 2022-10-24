import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

// ignore: must_be_immutable
class ListartistnameItemWidget extends StatelessWidget {
  ListartistnameItemWidget();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: getPadding(
          top: 12.0,
          bottom: 12.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      40.00,
                    ),
                  ),
                  child: CommonImageView(
                    imagePath: ImageConstant.imgImage80X80,
                    height: getSize(
                      80.00,
                    ),
                    width: getSize(
                      80.00,
                    ),
                  ),
                ),
                Container(
                  margin: getMargin(
                    left: 16,
                    right: 16,
                    top: 16,
                    bottom: 16,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "The Weeknd",
                        overflow: TextOverflow.ellipsis,
                        textAlign:   TextAlign.start,
                        style: TextStyle(
                             
                          fontSize: getFontSize(
                            18,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 12,
                          right: 10,
                        ),
                        child: Text(
                          "20 Songs",
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
              ],
            ),
            Padding(
              padding: getPadding(
                left: 0,
                top: 33,
                bottom: 33,
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
    );
  }
}
