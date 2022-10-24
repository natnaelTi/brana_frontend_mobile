import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/presentation/light_artist_details_screen/light_artist_details_screen.dart';

// ignore: must_be_immutable
class Listartistname1ItemWidget extends StatefulWidget {

  Listartistname1ItemWidget();

  @override
  State<Listartistname1ItemWidget> createState() => _Listartistname1ItemWidgetState();
}

class _Listartistname1ItemWidgetState extends State<Listartistname1ItemWidget> {
  bool following=false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>LightArtistDetailsScreen()),
  );
      },
      child: Padding(
        padding: getPadding(
          top: 8.0,
          bottom: 8.0,
          right: 20,
          left: 20
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    imagePath: ImageConstant.imgImage13,
                    height: getSize(
                      80.00,
                    ),
                    width: getSize(
                      80.00,
                    ),
                  ),
                ),
               SizedBox(
                width: getVerticalSize(14),
               ),
               
                Padding(
                  padding: getPadding(
                    left: 0,
                    top: 29,
                    bottom: 29,
                  ),
                  child: Text(
                    "Ariana Grande",
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
                ),
                Padding(
                  padding: getPadding(
                    left: 8,
                    right: 8,
                    top: 31,
                    bottom: 31,
                  ),
                  child: CommonImageView(
                    imagePath: ImageConstant.imgVector17X17,
                    height: getSize(
                      17.00,
                    ),
                    width: getSize(
                      17.00,
                    ),
                  ),
                ),
              ],
            ),
            GestureDetector(
                onTap: (){
                  setState(() {
                   following=true;
                  });
                },
                child: Container(
                  padding: getPadding(
                    left: 16,
                    right: 16,
                    top: 6,
                    bottom: 6
                  ),
              
                   margin: getMargin(
                    left: 0,
                    top: 24,
                    bottom: 24,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: ColorConstant.greenA700),
                    color: following?Colors.transparent:ColorConstant.greenA700
                  ),
                  
                  child:Text( following?"Following":"Follow",
                  
                  style: TextStyle(
                        color:following?ColorConstant.greenA700: ColorConstant.whiteA700,
                        fontSize: getFontSize(
                14,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w600,
                      )
                  
                  
                  
                  ,)
                  
                  
                  
                 
                ),
              ),
            
            
         
         
          ],
        ),
      ),
    );
  }
}
