import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

// ignore: must_be_immutable
class GridcategoriesItemWidget extends StatelessWidget {
  GridcategoriesItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        ),
        gradient: LinearGradient(
          begin: Alignment(
            1.0000000298023233,
            1.0000000298023233,
          ),
          end: Alignment(
            1.1102230246251565e-16,
            0,
          ),
          colors: [
            ColorConstant.purpleA700,
            ColorConstant.deepPurpleA200,
          ],
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: getPadding(
              left: 20,
              top: 20,
              bottom: 75,
            ),
            child: Text(
              "Business",
              overflow: TextOverflow.ellipsis,
              textAlign:   TextAlign.start,
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
          Padding(
            padding: getPadding(
              left: 11,
              top: 29,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  20.00,
                ),
              ),
              child: CommonImageView(
                imagePath: ImageConstant.imgImage91X81,
                height: getVerticalSize(
                  91.00,
                ),
                width: getHorizontalSize(
                  81.00,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
