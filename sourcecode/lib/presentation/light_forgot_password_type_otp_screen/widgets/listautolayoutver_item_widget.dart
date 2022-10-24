import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

// ignore: must_be_immutable
class ListautolayoutverItemWidget extends StatelessWidget {
  ListautolayoutverItemWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 4.0,
        bottom: 4.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: getHorizontalSize(
              129.00,
            ),
            padding: getPadding(
              left: 30,
              top: 13,
              right: 30,
              bottom: 13,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.gray50,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  12.00,
                ),
              ),
            ),
            child: Text(
              "1",
              maxLines: null,
              textAlign: TextAlign.center,
              style: TextStyle(
                   
                fontSize: getFontSize(
                  24,
                ),
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            width: getHorizontalSize(
              129.00,
            ),
            margin: getMargin(
              left: 8,
            ),
            padding: getPadding(
              left: 30,
              top: 13,
              right: 30,
              bottom: 13,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.gray50,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  12.00,
                ),
              ),
            ),
            child: Text(
              "2",
              maxLines: null,
              textAlign: TextAlign.center,
              style: TextStyle(
                   
                fontSize: getFontSize(
                  24,
                ),
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            width: getHorizontalSize(
              129.00,
            ),
            margin: getMargin(
              left: 8,
            ),
            padding: getPadding(
              left: 30,
              top: 13,
              right: 30,
              bottom: 13,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.gray50,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  12.00,
                ),
              ),
            ),
            child: Text(
              "3",
              maxLines: null,
              textAlign: TextAlign.center,
              style: TextStyle(
                   
                fontSize: getFontSize(
                  24,
                ),
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
