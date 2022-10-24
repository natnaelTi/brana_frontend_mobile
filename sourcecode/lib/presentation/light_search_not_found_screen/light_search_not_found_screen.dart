import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class LightSearchNotFoundScreen extends StatelessWidget {
  TextEditingController stateFilledSeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomSearchView(
                    width: 380,
                    focusNode: FocusNode(),
                    controller: stateFilledSeController,
                    hintText: "Abcdefghijklm",
                    margin: getMargin(
                      left: 24,
                      top: 24,
                      right: 24,
                    ),
                    alignment: Alignment.center,
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
                  Align(
                    alignment: Alignment.centerRight,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: getPadding(
                        left: 10,
                        top: 24,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
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
                                  color: ColorConstant.greenA700,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      19.00,
                                    ),
                                  ),
                                ),
                                child: Text(
                                  "Top",
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
                                  "Songs",
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
                              crossAxisAlignment: CrossAxisAlignment.center,
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
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 10,
                        top: 124,
                        right: 10,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgFrame,
                        height: getVerticalSize(
                          250.00,
                        ),
                        width: getHorizontalSize(
                          339.00,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 10,
                        top: 40,
                        right: 10,
                      ),
                      child: Text(
                        "Not Found",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                             
                          fontSize: getFontSize(
                            24,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: getHorizontalSize(
                        380.00,
                      ),
                      margin: getMargin(
                        left: 10,
                        top: 12,
                        right: 10,
                        bottom: 20,
                      ),
                      child: Text(
                        "Sorry, the keyword you entered cannot be found, please check again or search with another keyword.",
                        maxLines: null,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                             
                          fontSize: getFontSize(
                            18,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.20,
                        ),
                      ),
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
