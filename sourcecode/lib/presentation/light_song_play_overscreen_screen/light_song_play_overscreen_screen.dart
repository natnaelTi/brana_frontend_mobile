import '../light_song_play_overscreen_screen/widgets/listsongtitle_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class LightSongPlayOverscreenScreen extends StatelessWidget {
  TextEditingController stateFilledSeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: size.width,
                child: SingleChildScrollView(
                  child: Container(
                    margin: getMargin(
                      top: 24,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: double.infinity,
                          margin: getMargin(
                            left: 10,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.whiteA700,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomSearchView(
                                width: 380,
                                focusNode: FocusNode(),
                                controller: stateFilledSeController,
                                hintText: "Starboy",
                                margin: getMargin(
                                  right: 10,
                                ),
                                prefix: Container(
                                  margin: getMargin(
                                    left: 22,
                                    top: 20,
                                    right: 14,
                                    bottom: 19,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgSearchGray400,
                                  ),
                                ),
                                prefixConstraints: BoxConstraints(
                                  minWidth: getSize(
                                    16.02,
                                  ),
                                  minHeight: getSize(
                                    16.02,
                                  ),
                                ),
                                suffix: Padding(
                                  padding: EdgeInsets.only(
                                    right: getHorizontalSize(
                                      15.00,
                                    ),
                                  ),
                                  child: IconButton(
                                    onPressed: stateFilledSeController.clear,
                                    icon: Icon(
                                      Icons.clear,
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                ),
                                suffixConstraints: BoxConstraints(
                                  minWidth: getHorizontalSize(
                                    10.83,
                                  ),
                                  minHeight: getVerticalSize(
                                    10.83,
                                  ),
                                ),
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                padding: getPadding(
                                  top: 24,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          padding: getPadding(
                                            left: 20,
                                            top: 8,
                                            right: 20,
                                            bottom: 8,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                19.00,
                                              ),
                                            ),
                                            border: Border.all(
                                              color: ColorConstant.greenA700,
                                              width: getHorizontalSize(
                                                2.00,
                                              ),
                                            ),
                                          ),
                                          child: Text(
                                            "Top",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: ColorConstant.greenA700,
                                              fontSize: getFontSize(
                                                16,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.20,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: getMargin(
                                            left: 12,
                                          ),
                                          padding: getPadding(
                                            left: 20,
                                            top: 8,
                                            right: 20,
                                            bottom: 8,
                                          ),
                                          decoration: BoxDecoration(
                                            color: ColorConstant.greenA700,
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                19.00,
                                              ),
                                            ),
                                          ),
                                          child: Text(
                                            "Songs",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: ColorConstant.whiteA700,
                                              fontSize: getFontSize(
                                                16,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.20,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: getMargin(
                                            left: 12,
                                          ),
                                          padding: getPadding(
                                            left: 20,
                                            top: 8,
                                            right: 20,
                                            bottom: 8,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                19.00,
                                              ),
                                            ),
                                            border: Border.all(
                                              color: ColorConstant.greenA700,
                                              width: getHorizontalSize(
                                                2.00,
                                              ),
                                            ),
                                          ),
                                          child: Text(
                                            "Artists",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: ColorConstant.greenA700,
                                              fontSize: getFontSize(
                                                16,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.20,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: getMargin(
                                            left: 12,
                                          ),
                                          padding: getPadding(
                                            left: 20,
                                            top: 8,
                                            right: 20,
                                            bottom: 8,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                19.00,
                                              ),
                                            ),
                                            border: Border.all(
                                              color: ColorConstant.greenA700,
                                              width: getHorizontalSize(
                                                2.00,
                                              ),
                                            ),
                                          ),
                                          child: Text(
                                            "Albums",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: ColorConstant.greenA700,
                                              fontSize: getFontSize(
                                                16,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 130,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                            padding: getPadding(
                                              left: 20,
                                              top: 8,
                                              right: 20,
                                              bottom: 8,
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  19.00,
                                                ),
                                              ),
                                              border: Border.all(
                                                color: ColorConstant.greenA700,
                                                width: getHorizontalSize(
                                                  2.00,
                                                ),
                                              ),
                                            ),
                                            child: Text(
                                              "Playlists",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: ColorConstant.greenA700,
                                                fontSize: getFontSize(
                                                  16,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w600,
                                                letterSpacing: 0.20,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: getMargin(
                                              left: 12,
                                            ),
                                            padding: getPadding(
                                              left: 20,
                                              top: 8,
                                              right: 20,
                                              bottom: 8,
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  19.00,
                                                ),
                                              ),
                                              border: Border.all(
                                                color: ColorConstant.greenA700,
                                                width: getHorizontalSize(
                                                  2.00,
                                                ),
                                              ),
                                            ),
                                            child: Text(
                                              "Profiles",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: ColorConstant.greenA700,
                                                fontSize: getFontSize(
                                                  16,
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
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 24,
                                  right: 10,
                                ),
                                child: ListView.builder(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: 8,
                                  itemBuilder: (context, index) {
                                    return ListsongtitleItemWidget();
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
            Container(
              decoration: BoxDecoration(
                color: ColorConstant.whiteA700,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    getHorizontalSize(
                      32.00,
                    ),
                  ),
                  topRight: Radius.circular(
                    getHorizontalSize(
                      32.00,
                    ),
                  ),
                ),
                border: Border.all(
                  color: ColorConstant.gray100,
                  width: getHorizontalSize(
                    1.00,
                  ),
                ),
              ),
              child: Padding(
                padding: getPadding(
                  top: 24,
                  bottom: 36,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          12.00,
                        ),
                      ),
                      child: CommonImageView(
                        imagePath: ImageConstant.imgImage80X80,
                        height: getSize(
                          48.00,
                        ),
                        width: getSize(
                          48.00,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 13,
                        bottom: 13,
                      ),
                      child: Text(
                        "Starboy - The Weeknd, Daft Pu...",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 17,
                        bottom: 17,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgSignal13X11,
                        height: getVerticalSize(
                          13.00,
                        ),
                        width: getHorizontalSize(
                          11.00,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 17,
                        bottom: 17,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgGroup13X15,
                        height: getVerticalSize(
                          13.00,
                        ),
                        width: getHorizontalSize(
                          15.00,
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
    );
  }
}
