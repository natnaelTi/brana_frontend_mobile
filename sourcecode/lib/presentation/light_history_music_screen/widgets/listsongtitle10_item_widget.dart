import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

// ignore: must_be_immutable
class Listsongtitle10ItemWidget extends StatelessWidget {
  Listsongtitle10ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 10.0,
        bottom: 10.0,
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
              imagePath: ImageConstant.imgImage14,
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
              top: 17,
              bottom: 17,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Somebody’s Nobody",
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
                    top: 10,
                    right: 10,
                  ),
                  child: Text(
                    "Alexander 23",
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
          Padding(
            padding: getPadding(
              left: 47,
              top: 26,
              bottom: 26,
            ),
            child: CommonImageView(
              imagePath: ImageConstant.imgExclude,
              height: getSize(
                26.00,
              ),
              width: getSize(
                26.00,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 30,
              top: 33,
              right: 8,
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
    );
  }
}
