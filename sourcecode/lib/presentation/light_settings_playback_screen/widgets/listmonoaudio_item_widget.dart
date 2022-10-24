import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

// ignore: must_be_immutable
class ListmonoaudioItemWidget extends StatelessWidget {
  ListmonoaudioItemWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 12.0,
        bottom: 12.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Mono Audio",
                  overflow: TextOverflow.ellipsis,
                  textAlign:   TextAlign.start,
                  style: TextStyle(
                       
                    fontSize: getFontSize(
                      18,
                    ),
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.20,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    316.00,
                  ),
                  margin: getMargin(
                    top: 4,
                  ),
                  child: Text(
                    "Makes tke left and right speakers play the same audio.",
                    maxLines: null,
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
          Padding(
            padding: getPadding(
              left: 20,
              top: 22,
              bottom: 22,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  12.00,
                ),
              ),
              child: CommonImageView(
                svgPath: ImageConstant.imgStatedisabled,
                height: getVerticalSize(
                  24.00,
                ),
                width: getHorizontalSize(
                  44.00,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
