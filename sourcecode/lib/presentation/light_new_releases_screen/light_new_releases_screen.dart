import '../light_new_releases_screen/widgets/autolayouthor_item_widget.dart';
import '../light_new_releases_screen/widgets/gridloremipsumdol1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

class LightNewReleasesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              margin: getMargin(
                left: 24,
                top: 33,
                right: 24,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: size.width,
                      margin: getMargin(
                        right: 2,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 4,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 6,
                                    bottom: 6,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgArrowleft,
                                    height: getVerticalSize(
                                      15.00,
                                    ),
                                    width: getHorizontalSize(
                                      19.00,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 20,
                                  ),
                                  child: Text(
                                    "New Releases",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign:   TextAlign.start,
                                    style: TextStyle(
                                         
                                      fontSize: getFontSize(
                                        24,
                                      ),
                                      fontFamily: 'Urbanist',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 3,
                              bottom: 2,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgSearchGray900,
                              height: getVerticalSize(
                                22.00,
                              ),
                              width: getHorizontalSize(
                                21.00,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: getMargin(
                      top: 41,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            right: 10,
                          ),
                          child: Text(
                            "The Best New Releases",
                            overflow: TextOverflow.ellipsis,
                            textAlign:   TextAlign.start,
                            style: TextStyle(
                                 
                              fontSize: getFontSize(
                                24,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            260.00,
                          ),
                          width: getHorizontalSize(
                            380.00,
                          ),
                          child: ListView.builder(
                            padding: getPadding(
                              top: 16,
                            ),
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return AutolayouthorItemWidget();
                            },
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 32,
                            right: 10,
                          ),
                          child: Text(
                            "New Albums & Single",
                            overflow: TextOverflow.ellipsis,
                            textAlign:   TextAlign.start,
                            style: TextStyle(
                                 
                              fontSize: getFontSize(
                                24,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 16,
                          ),
                          child: GridView.builder(
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisExtent: getVerticalSize(
                                245.00,
                              ),
                              crossAxisCount: 2,
                              mainAxisSpacing: getHorizontalSize(
                                12.00,
                              ),
                              crossAxisSpacing: getHorizontalSize(
                                12.00,
                              ),
                            ),
                            physics: BouncingScrollPhysics(),
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Gridloremipsumdol1ItemWidget();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
