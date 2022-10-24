import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

import '../../light_song_details_screen/light_song_details_screen.dart';

// ignore: must_be_immutable
class Gridloremipsumdol2ItemWidget extends StatelessWidget {
  Gridloremipsumdol2ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
         onTap: (){
                                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context)
                                    =>LightSongDetailsScreen()),
                                      );
                                                },
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
              child: Align(
                alignment: Alignment.center,
                child: CommonImageView(
                  imagePath: ImageConstant.imgImage4,
                  height: getSize(
                    184.00,
                  ),
                  width: getSize(
                    184.00,
                  ),
                ),
              ),
            ),
            Container(
              width: getHorizontalSize(
                184.00,
              ),
              margin: getMargin(
                top: 12,
              ),
              child: Text(
                "Shades of Love - Ania Szarmach",
                maxLines: null,
                textAlign:   TextAlign.start,
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
    );
  }
}
