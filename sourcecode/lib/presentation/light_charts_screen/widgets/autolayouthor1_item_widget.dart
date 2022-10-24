import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/presentation/light_top_albums_global_screen/light_top_albums_global_screen.dart';

// ignore: must_be_immutable
class Autolayouthor1ItemWidget extends StatelessWidget {
  Autolayouthor1ItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: InkWell(
        onTap: (){
          Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>LightTopAlbumsGlobalScreen()),
  );
        },
        child: Container(
          margin: getMargin(
            right: 12,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: getSize(
                    184.00,
                  ),
                  width: getSize(
                    184.00,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              28.00,
                            ),
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.imgImage79,
                            height: getSize(
                              184.00,
                            ),
                            width: getSize(
                              184.00,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: getMargin(
                            left: 23,
                            top: 40,
                            right: 23,
                            bottom: 40,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                28.00,
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  width: getHorizontalSize(
                                    138.00,
                                  ),
                                  child: Text(
                                    "TOP\nALBUMS\nGLOBAL",
                                    maxLines: null,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: ColorConstant.whiteA700,
                                      fontSize: getFontSize(
                                        24,
                                      ),
                                      fontFamily: 'Urbanist',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 12,
                  right: 10,
                ),
                child: Text(
                  "Top Albums Global",
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
            ],
          ),
        ),
      ),
    );
  }
}
