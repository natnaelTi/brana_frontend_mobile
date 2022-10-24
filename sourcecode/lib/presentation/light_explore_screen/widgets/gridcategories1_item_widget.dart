import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

import '../../light_charts_screen/light_charts_screen.dart';

// ignore: must_be_immutable
class Gridcategories1ItemWidget extends StatelessWidget {
  Gridcategories1ItemWidget();

  @override
  Widget build(BuildContext context) {
    return InkWell(
       onTap: (){
              Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)
                  =>LightChartsScreen()),
                    );
            },
      child: Container(
        padding: getPadding(),
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
              ColorConstant.redA201,
              ColorConstant.pinkA100,
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: getPadding(
                left: 0,
                top: 20,
                bottom: 75,
              ),
              child: Container(
                width: getHorizontalSize(70),
                child: Row(
                  children: [
                    SizedBox(
                      width: getHorizontalSize(16),
                    ),
                    Text(
                      "Charts",
                      overflow: TextOverflow.ellipsis,

                      maxLines: 2,
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
                  ],
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 0,
                top: 29,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    20.00,
                  ),
                ),
                child: CommonImageView(
                  imagePath: ImageConstant.imgImage95,
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
    );
  }
}
