import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/widgets/custom_button.dart';

// ignore: must_be_immutable
class Listprofilename1ItemWidget extends StatelessWidget {
  Listprofilename1ItemWidget();

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
                  imagePath: ImageConstant.imgImage63,
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
                  top: 16,
                  bottom: 16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "GeneralBase",
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
                        "8,829 Followers",
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
          CustomButton(
            width: 73,
            text: "Follow",
            margin: getMargin(
              left: 106,
              top: 24,
              bottom: 24,
            ),
          ),
        ],
      ),
    );
  }
}
