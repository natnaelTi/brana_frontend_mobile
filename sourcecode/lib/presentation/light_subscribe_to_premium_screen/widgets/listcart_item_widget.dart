import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/presentation/light_select_payment_methods_2_screen/light_select_payment_methods_2_screen.dart';

// ignore: must_be_immutable
class ListcartItemWidget extends StatelessWidget {
  ListcartItemWidget();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>LightSelectPaymentMethods2Screen()),
  );
      },
      child: Container(
        margin: getMargin(
          top: 12.0,
          bottom: 12.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              32.00,
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
              ColorConstant.orangeA400,
              ColorConstant.orangeA200,
            ],
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: getPadding(
                left: 24,
                top: 31,
                right: 24,
              ),
              child: CommonImageView(
                svgPath: ImageConstant.imgCart,
                height: getVerticalSize(
                  44.00,
                ),
                width: getHorizontalSize(
                  50.00,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 24,
                top: 24,
                right: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "9.99",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: ColorConstant.whiteA700,
                      fontSize: getFontSize(
                        32,
                      ),
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 8,
                      top: 6,
                      bottom: 6,
                    ),
                    child: Text(
                      "/month",
                      overflow: TextOverflow.ellipsis,
                      textAlign:   TextAlign.start,
                      style: TextStyle(
                        color: ColorConstant.gray100,
                        fontSize: getFontSize(
                          18,
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
            Container(
              height: getVerticalSize(
                1.00,
              ),
              width: getHorizontalSize(
                332.00,
              ),
              margin: getMargin(
                left: 24,
                top: 16,
                right: 24,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.gray200,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 24,
                top: 20,
                right: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 4,
                      bottom: 2,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          1.00,
                        ),
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgCheckmark14X19,
                        height: getVerticalSize(
                          14.00,
                        ),
                        width: getHorizontalSize(
                          19.00,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 25,
                    ),
                    child: Text(
                      "Listening with better audio quality",
                      overflow: TextOverflow.ellipsis,
                      textAlign:   TextAlign.start,
                      style: TextStyle(
                        color: ColorConstant.whiteA700,
                        fontSize: getFontSize(
                          16,
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
                left: 24,
                top: 14,
                right: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 4,
                      bottom: 2,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          1.00,
                        ),
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgCheckmark14X19,
                        height: getVerticalSize(
                          14.00,
                        ),
                        width: getHorizontalSize(
                          19.00,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 25,
                    ),
                    child: Text(
                      "Listening without restrictions & ads",
                      overflow: TextOverflow.ellipsis,
                      textAlign:   TextAlign.start,
                      style: TextStyle(
                        color: ColorConstant.whiteA700,
                        fontSize: getFontSize(
                          16,
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
                left: 24,
                top: 14,
                right: 24,
                bottom: 29,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 4,
                      bottom: 2,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          1.00,
                        ),
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgCheckmark14X19,
                        height: getVerticalSize(
                          14.00,
                        ),
                        width: getHorizontalSize(
                          19.00,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 25,
                    ),
                    child: Text(
                      "Shuffle play & download unlimited",
                      overflow: TextOverflow.ellipsis,
                      textAlign:   TextAlign.start,
                      style: TextStyle(
                        color: ColorConstant.whiteA700,
                        fontSize: getFontSize(
                          16,
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
      ),
    );
  }
}
