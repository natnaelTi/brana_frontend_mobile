import 'package:easy_localization/easy_localization.dart';
import 'package:hearme/presentation/light_song_play_screen/light_song_play_screen.dart';

import '../light_artist_details_screen/widgets/listsongtitle4_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

class LightArtistDetailsScreen extends StatefulWidget {
  @override
  State<LightArtistDetailsScreen> createState() =>
      _LightArtistDetailsScreenState();
}

class _LightArtistDetailsScreenState extends State<LightArtistDetailsScreen> {
  bool following = false;

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    bool isRtl = context.locale == Constants.arLocal;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: size.width,
              margin: getMargin(
                left: 24,
                top: 37,
                right: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 3,
                      bottom: 2,
                    ),
                    child: CommonImageViewWithDarkOption(
                      isDark: isDark,
                      isRtl: isRtl,
                      isBackBtn: true,
                      svgPath: ImageConstant.imgArrowleft,
                      height: getVerticalSize(
                        15.00,
                      ),
                      width: getHorizontalSize(
                        19.00,
                      ),
                    ),
                  ),
                  CommonImageViewWithDarkOption(
                    isDark: isDark,
                    svgPath: ImageConstant.imgMenu21X21,
                    height: getSize(
                      21.00,
                    ),
                    width: getSize(
                      21.00,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 24,
                        top: 37,
                        right: 24,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            125.00,
                          ),
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.imgImage13,
                          height: getSize(
                            250.00,
                          ),
                          width: getSize(
                            250.00,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 24,
                        top: 16,
                        right: 24,
                      ),
                      child: Text(
                        "Ariana Grande",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: getFontSize(
                            32,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 24,
                        top: 12,
                        right: 24,
                      ),
                      child: Text(
                        "55,278,829 monthly listeners",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: getFontSize(
                            18,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 24,
                        top: 20,
                        right: 24,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    following = true;
                                  });
                                },
                                child: Container(
                                    width: getHorizontalSize(112),
                                    padding: getPadding(
                                        left: 10,
                                        right: 10,
                                        top: 10,
                                        bottom: 10),
                                    margin: getMargin(
                                      left: 0,
                                      top: 24,
                                      bottom: 24,
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: ColorConstant.greenA700),
                                        color: following
                                            ? Colors.transparent
                                            : ColorConstant.greenA700),
                                    child: Text(
                                      following ? "Following" : "Follow",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: following
                                            ? ColorConstant.greenA700
                                            : ColorConstant.whiteA700,
                                        fontSize: getFontSize(
                                          18,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )),
                              ),
                              Theme(
                                data: Theme.of(context).copyWith(
                                  dividerColor: isDark
                                      ? ColorConstant.darkButton
                                      : ColorConstant.gray200,
                                  iconTheme: IconThemeData(
                                      color: isDark
                                          ? ColorConstant.whiteA700
                                          : Colors.black),
                                  textTheme: TextTheme().apply(
                                      bodyColor: isDark
                                          ? ColorConstant.whiteA700
                                          : Colors.black),
                                ),
                                child: PopupMenuButton<int>(
                                  padding: EdgeInsets.only(
                                      right: getHorizontalSize(2)),
                                  iconSize: getHorizontalSize(20),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(getHorizontalSize(20)),
                                    ),
                                  ),
                                  color: isDark
                                      ? ColorConstant.darkBg
                                      : ColorConstant.whiteA700,
                                  onSelected: (item) =>
                                      onSelected(context, item),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  top: 1,
                                                  bottom: 1,
                                                ),
                                                child:
                                                    CommonImageViewWithDarkOption(
                                                  isDark: isDark,
                                                  svgPath: ImageConstant
                                                      .imgUser22X15,
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
                                                  overflow:
                                                      TextOverflow.ellipsis,
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  top: 2,
                                                  bottom: 2,
                                                ),
                                                child:
                                                    CommonImageViewWithDarkOption(
                                                  isDark: isDark,
                                                  svgPath: ImageConstant
                                                      .imgClose15X15,
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
                                                  overflow:
                                                      TextOverflow.ellipsis,
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                top: 2,
                                                bottom: 2,
                                              ),
                                              child:
                                                  CommonImageViewWithDarkOption(
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                top: 1,
                                                bottom: 1,
                                              ),
                                              child:
                                                  CommonImageViewWithDarkOption(
                                                isDark: isDark,
                                                svgPath:
                                                    ImageConstant.imgShare16X16,
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
                            ],
                          ),
                          Padding(
                            padding: getPadding(
                              top: 4,
                              bottom: 4,
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          LightSongPlayScreen()),
                                );
                              },
                              child: CommonImageView(
                                imagePath: ImageConstant.imgExclude,
                                height: getSize(
                                  36.00,
                                ),
                                width: getSize(
                                  36.00,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: getVerticalSize(
                        1.00,
                      ),
                      width: getHorizontalSize(
                        380.00,
                      ),
                      margin: getMargin(
                        left: 24,
                        top: 24,
                        right: 24,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.gray200,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 24,
                        top: 23,
                        right: 24,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "Popular Songs",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: getFontSize(
                                24,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              bottom: 6,
                            ),
                            child: Text(
                              "See All",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                color: ColorConstant.greenA700,
                                fontSize: getFontSize(
                                  16,
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
                    Padding(
                      padding: getPadding(
                        left: 24,
                        top: 24,
                        right: 24,
                        bottom: 7,
                      ),
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Listsongtitle4ItemWidget();
                        },
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

  onSelected(BuildContext context, int item) {}
}
