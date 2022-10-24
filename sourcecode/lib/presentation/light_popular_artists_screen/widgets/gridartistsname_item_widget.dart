import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

import '../../light_artist_details_screen/light_artist_details_screen.dart';

// ignore: must_be_immutable
class GridartistsnameItemWidget extends StatelessWidget {
  GridartistsnameItemWidget();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: InkWell(
         onTap: (){
                                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context)
                                    =>LightArtistDetailsScreen()),
                                      );
                                                },
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    92.00,
                  ),
                ),
                child: CommonImageView(
                  imagePath: ImageConstant.imgImage13,
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
                ),
                child: Text(
                  "Ariana Grande",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                       
                    fontSize: getFontSize(
                      18,
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
      ),
    );
  }
}
