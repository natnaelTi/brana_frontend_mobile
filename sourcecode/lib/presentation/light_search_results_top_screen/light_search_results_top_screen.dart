import '../light_search_results_top_screen/widgets/listsongtitle5_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

class LightSearchResultsTopScreen extends StatefulWidget {
  @override
  State<LightSearchResultsTopScreen> createState() =>
      _LightSearchResultsTopScreenState();
}

class _LightSearchResultsTopScreenState
    extends State<LightSearchResultsTopScreen> {
  TextEditingController stateFilledSeController = TextEditingController();
  bool following = false;

  bool following2 = false;

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return SingleChildScrollView(
      padding: getPadding(left: 20, right: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: getPadding(
              top: 16,
              right: 0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          40.00,
                        ),
                      ),
                      child: CommonImageView(
                        imagePath: ImageConstant.imgImage26,
                        height: getSize(
                          80.00,
                        ),
                        width: getSize(
                          80.00,
                        ),
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        left: 16,
                        right: 16,
                        top: 16,
                        bottom: 16,
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  "Katy Perry",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: getFontSize(
                                      18,
                                    ),
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 6,
                                    top: 2,
                                    bottom: 2,
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
                          ),
                          Padding(
                            padding: getPadding(
                              top: 12,
                              right: 10,
                            ),
                            child: Text(
                              "Artist",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: getFontSize(
                                  12,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      following = true;
                    });
                  },
                  child: Container(
                      padding:
                          getPadding(left: 16, right: 16, top: 6, bottom: 6),
                      margin: getMargin(
                        left: 0,
                        top: 24,
                        bottom: 24,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: ColorConstant.greenA700),
                          color: following
                              ? Colors.transparent
                              : ColorConstant.greenA700),
                      child: Text(
                        following ? "Following" : "Follow",
                        style: TextStyle(
                          color: following
                              ? ColorConstant.greenA700
                              : ColorConstant.whiteA700,
                          fontSize: getFontSize(
                            14,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              top: 16,
              right: 0,
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
                          20.00,
                        ),
                      ),
                      child: CommonImageView(
                        imagePath: ImageConstant.imgImage7,
                        height: getSize(
                          80.00,
                        ),
                        width: getSize(
                          80.00,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: getHorizontalSize(16),
                    ),
                    Container(
                      margin: getMargin(
                        left: 0,
                        top: 17,
                        bottom: 17,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Last Friday Night",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: getFontSize(
                                18,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 10,
                              right: 10,
                            ),
                            child: Text(
                              "Katy Perry",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: getFontSize(
                                  12,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 0,
                        top: 26,
                        bottom: 26,
                      ),
                      child: CommonImageView(
                        imagePath: ImageConstant.imgExclude,
                        height: getSize(
                          26.00,
                        ),
                        width: getSize(
                          26.00,
                        ),
                      ),
                    ),
                    //  SizedBox(
                    //   width: getHorizontalSize(20),
                    //  ),
                    Padding(
                      padding: getPadding(
                        left: 0,
                        top: 33,
                        right: 0,
                        bottom: 33,
                      ),
                      child: Theme(
                        data: Theme.of(context).copyWith(
                          dividerColor: isDark
                              ? ColorConstant.darkButton
                              : ColorConstant.gray200,
                          iconTheme: IconThemeData(
                              color: isDark ? Colors.white : Colors.black),
                          textTheme: TextTheme().apply(bodyColor: Colors.black),
                        ),
                        child: PopupMenuButton<int>(
                          padding: EdgeInsets.only(right: getHorizontalSize(2)),
                          iconSize: getHorizontalSize(18),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(getHorizontalSize(20)),
                            ),
                          ),
                          color: isDark
                              ? ColorConstant.darkBg
                              : ColorConstant.whiteA700,
                          onSelected: (item) => onSelected(context, item),
                          itemBuilder: (context) => [
                            PopupMenuItem<int>(
                              value: 0,
                              child: Container(
                                child: Padding(
                                  padding: getPadding(
                                    left: 10,
                                    top: 15,
                                    right: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: CommonImageViewWithDarkOption(
                                          isDark: isDark,
                                          svgPath: ImageConstant.imgUser22X15,
                                          height: getVerticalSize(
                                            16.00,
                                          ),
                                          width: getHorizontalSize(
                                            11.00,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 16,
                                        ),
                                        child: Text(
                                          "View Artist",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: isDark
                                                ? Colors.white
                                                : Colors.black,
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
                              ),
                            ),
                            PopupMenuDivider(),
                            PopupMenuItem<int>(
                                value: 1,
                                child: Padding(
                                  padding: getPadding(
                                    left: 10,
                                    top: 20,
                                    right: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 2,
                                          bottom: 2,
                                        ),
                                        child: CommonImageViewWithDarkOption(
                                          isDark: isDark,
                                          svgPath: ImageConstant.imgClose15X15,
                                          height: getSize(
                                            15.00,
                                          ),
                                          width: getSize(
                                            15.00,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 14,
                                        ),
                                        child: Text(
                                          "Don’t Play This",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: isDark
                                                ? Colors.white
                                                : Colors.black,
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
                                )),
                            PopupMenuDivider(),
                            PopupMenuItem(
                              value: 2,
                              child: Padding(
                                padding: getPadding(
                                  left: 10,
                                  top: 15,
                                  right: 10,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 2,
                                        bottom: 2,
                                      ),
                                      child: CommonImageViewWithDarkOption(
                                        isDark: isDark,
                                        svgPath: ImageConstant.imgPlay,
                                        height: getSize(
                                          15.00,
                                        ),
                                        width: getSize(
                                          15.00,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 14,
                                      ),
                                      child: Text(
                                        "Go to Album",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: isDark
                                              ? Colors.white
                                              : Colors.black,
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
                            ),
                            PopupMenuDivider(),
                            PopupMenuItem(
                              value: 3,
                              child: Padding(
                                padding: getPadding(
                                  left: 10,
                                  top: 15,
                                  right: 21,
                                  bottom: 10,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 1,
                                        bottom: 1,
                                      ),
                                      child: CommonImageViewWithDarkOption(
                                        isDark: isDark,
                                        svgPath: ImageConstant.imgShare16X16,
                                        height: getSize(
                                          16.00,
                                        ),
                                        width: getSize(
                                          16.00,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 13,
                                      ),
                                      child: Text(
                                        "Share",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: isDark
                                              ? Colors.white
                                              : Colors.black,
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
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              top: 16,
              right: 0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          40.00,
                        ),
                      ),
                      child: CommonImageView(
                        imagePath: ImageConstant.imgImage27,
                        height: getSize(
                          80.00,
                        ),
                        width: getSize(
                          80.00,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: getHorizontalSize(16),
                    ),
                    Container(
                      margin: getMargin(
                        left: 0,
                        top: 16,
                        bottom: 16,
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  "Clean Bandit",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: getFontSize(
                                      18,
                                    ),
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 7,
                                    top: 2,
                                    bottom: 2,
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
                          ),
                          Padding(
                            padding: getPadding(
                              top: 12,
                              right: 10,
                            ),
                            child: Text(
                              "Artist",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: getFontSize(
                                  12,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      following2 = true;
                    });
                  },
                  child: Container(
                      padding:
                          getPadding(left: 16, right: 16, top: 6, bottom: 6),
                      margin: getMargin(
                        left: 0,
                        top: 24,
                        bottom: 24,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: ColorConstant.greenA700),
                          color: following2
                              ? Colors.transparent
                              : ColorConstant.greenA700),
                      child: Text(
                        following2 ? "Following" : "Follow",
                        style: TextStyle(
                          color: following2
                              ? ColorConstant.greenA700
                              : ColorConstant.whiteA700,
                          fontSize: getFontSize(
                            14,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              top: 0,
              right: 0,
            ),
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Listsongtitle5ItemWidget();
              },
            ),
          ),
        ],
      ),
    );
  }

  onSelected(BuildContext context, int item) {}
}
