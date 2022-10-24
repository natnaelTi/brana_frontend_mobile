import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/presentation/light_charts_screen/light_charts_screen.dart';

// ignore: must_be_immutable
class ListcategoriesItemWidget extends StatelessWidget {
  ListcategoriesItemWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 6.0,
        bottom: 6.0,
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
                  =>LightChartsScreen()),
                    );
            },
            child: Container(
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
                    ColorConstant.greenA700,
                    ColorConstant.greenA400,
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
                      "Charts",
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
                      left: 26,
                      top: 29,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          20.00,
                        ),
                      ),
                      child: CommonImageView(
                        imagePath: ImageConstant.imgImage92,
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
            ),
          ),
          Container(
            margin: getMargin(
              left: 12,
            ),
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
                    "Podcasts",
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
                    left: 8,
                    top: 29,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        20.00,
                      ),
                    ),
                    child: CommonImageView(
                      imagePath: ImageConstant.imgImage93,
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
          ),
        ],
      ),
    );
  }
}
