import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/presentation/light_album_details_screen/light_album_details_screen.dart';

// ignore: must_be_immutable
class GridloremipsumdolItemWidget extends StatelessWidget {
  GridloremipsumdolItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: (){
          Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>LightAlbumDetailsScreen()),
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
              child: CommonImageView(
                imagePath: ImageConstant.imgImage10,
                height: getSize(
                  184.00,
                ),
                width: size.width
              ),
            ),
            Padding(
              padding: getPadding(
                top: 12,
                right: 10,
              ),
              child: Text(
                "Sweetener",
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
                "Ariana Grande",
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
            Padding(
              padding: getPadding(
                top: 4,
                right: 10,
              ),
              child: Text(
                "2018",
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
      ),
    );
  }
}
