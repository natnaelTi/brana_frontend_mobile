import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/widgets/custom_icon_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore: must_be_immutable
class ListautolayouthorItemWidget extends StatelessWidget {
  ListautolayouthorItemWidget();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: getMargin(
          top: 11.999985,
          bottom: 11.999985,
        ),
        decoration: BoxDecoration(
          color: ColorConstant.whiteA700,
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              32.00,
            ),
          ),
        ),
        child: OutlineGradientButton(
          padding: EdgeInsets.only(
            left: getHorizontalSize(
              3.00,
            ),
            top: getVerticalSize(
              3.00,
            ),
            right: getHorizontalSize(
              3.00,
            ),
            bottom: getVerticalSize(
              3.00,
            ),
          ),
          strokeWidth: getHorizontalSize(
            3.00,
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
          corners: Corners(
            topLeft: Radius.circular(
              32,
            ),
            topRight: Radius.circular(
              32,
            ),
            bottomLeft: Radius.circular(
              32,
            ),
            bottomRight: Radius.circular(
              32,
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              CustomIconButton(
                height: 80,
                width: 80,
                margin: getMargin(
                  left: 24,
                  top: 24,
                  bottom: 24,
                ),
                variant: IconButtonVariant.FillGreenA70014,
                child: CommonImageView(
                  imagePath: ImageConstant.imgAutolayouthor1,
                ),
              ),
              Container(
                margin: getMargin(
                  left: 20,
                  top: 39,
                  right: 24,
                  bottom: 39,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        right: 10,
                      ),
                      child: Text(
                        "via SMS:",
                        overflow: TextOverflow.ellipsis,
                        textAlign:   TextAlign.start,
                        style: TextStyle(
                          color: ColorConstant.gray600,
                          fontSize: getFontSize(
                            14,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 8,
                      ),
                      child: Text(
                        "+1 111 ******99",
                        overflow: TextOverflow.ellipsis,
                        textAlign:   TextAlign.start,
                        style: TextStyle(
                             
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
            ],
          ),
        ),
      ),
    );
  }
}
