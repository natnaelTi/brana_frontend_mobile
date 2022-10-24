import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/presentation/light_playlist_details1_screen/light_playlist_details1_screen.dart';

// ignore: must_be_immutable
class GridlanguageItemWidget extends StatelessWidget {
  GridlanguageItemWidget();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>LightPlaylistDetails1Screen()),
  );
      },
      child: Container(
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
                imagePath: ImageConstant.arianaPlayLis,
                height: getSize(
                  184.00,
                ),
                width: size.width
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
                "Ariana Grande - Top Greatest Hits",
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
