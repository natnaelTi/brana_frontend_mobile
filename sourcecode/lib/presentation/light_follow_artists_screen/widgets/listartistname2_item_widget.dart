import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

// ignore: must_be_immutable
class Listartistname2ItemWidget extends StatefulWidget {
  bool following;

  Listartistname2ItemWidget({this.following=false});

  @override
  State<Listartistname2ItemWidget> createState() => _Listartistname2ItemWidgetState();
}

class _Listartistname2ItemWidgetState extends State<Listartistname2ItemWidget> {
  @override
  Widget build(BuildContext context) {
bool isRtl = context.locale==Constants.arLocal;
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: getPadding(
          top: 8.0,
          bottom: 8.0,
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
                    imagePath: ImageConstant.imgImage80X80,
                    height: getSize(
                      80.00,
                    ),
                    width: getSize(
                      80.00,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left:isRtl?0: 16,
                    top: 29,
                    bottom: 29,
                  ),
                  child: Text(
                    "The Weeknd",
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
                    left: 5,
                    right: 5,
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
                 widget. following=true;
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
                  color: widget.following?Colors.transparent:ColorConstant.greenA700
                ),
                
                child:Text( widget.following?"Following":"Follow",
                
                style: TextStyle(
                      color:widget.following?ColorConstant.greenA700: ColorConstant.whiteA700,
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
