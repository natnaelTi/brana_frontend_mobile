import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

// ignore: must_be_immutable
class Gridloremipsumdol1ItemWidget extends StatelessWidget {
  Gridloremipsumdol1ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                28.00,
              ),
            ),
            child: CommonImageView(
              imagePath: ImageConstant.imgImage184X184,
              height: getSize(
                184.00,
              ),
              width: getSize(
                184.00,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 12,
              right: 10,
            ),
            child: Text(
              "Pain",
              overflow: TextOverflow.ellipsis,
              textAlign:   TextAlign.start,
              style: TextStyle(
                   
                fontSize: getFontSize(
                  20,
                ),
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 4,
              right: 10,
            ),
            child: Text(
              "Ryan Jones",
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
    );
  }
}
