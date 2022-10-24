import 'package:easy_localization/easy_localization.dart';
import '../light_artists_podcasters_screen/widgets/listcountry_item_widget.dart';
import '../light_artists_singers_screen/widgets/listartistname_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

class LightArtistsSingersScreen extends StatefulWidget {
  @override
  State<LightArtistsSingersScreen> createState() =>
      _LightArtistsSingersScreenState();
}

class _LightArtistsSingersScreenState extends State<LightArtistsSingersScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    bool isRtl = context.locale == Constants.arLocal;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: size.width,
                  margin: getMargin(right: 24, left: 24, top: 24),
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
                            Padding(
                              padding: getPadding(
                                left: 20,
                                right: 20
                              ),
                              child: Text(
                                "Artists",
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
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 3,
                          bottom: 3,
                        ),
                        child: CommonImageViewWithDarkOption(
                          isDark: isDark,
                          svgPath: ImageConstant.imgMenu21X21,
                          height: getSize(
                            21.00,
                          ),
                          width: getSize(
                            21.00,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
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
                    Container(
                      width: double.infinity,
                      margin: getMargin(
                        top: 0,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(
                                top: getVerticalSize(
                                  0.00,
                                ),
                                right: getHorizontalSize(
                                  0.00,
                                ),
                              ),
                              child: Container(
                                height: getVerticalSize(50),
                                child: TabBar(
                                    controller: tabController,
                                    indicatorWeight: 6,
                                    indicator: UnderlineTabIndicator(
                                        insets: EdgeInsets.symmetric(
                                            horizontal: getHorizontalSize(16)),
                                        borderSide: BorderSide(
                                            color: ColorConstant.greenA700)),
                                    labelColor: ColorConstant.greenA700,
                                    unselectedLabelColor: isDark
                                        ? Colors.white
                                        : ColorConstant.gray500,
                                    labelStyle: TextStyle(
                                      fontSize: getFontSize(
                                        18,
                                      ),
                                      fontFamily: 'Urbanist',
                                      fontWeight: FontWeight.w600,
                                    ),
                                    unselectedLabelStyle: TextStyle(
                                      fontSize: getFontSize(
                                        18,
                                      ),
                                      fontFamily: 'Urbanist',
                                      fontWeight: FontWeight.w600,
                                    ),
                                    tabs: [
                                      Tab(
                                        text: "Singers",
                                      ),
                                      Tab(
                                        text: "Podcastwers",
                                      )
                                    ]),
                              )),
                          Container(
                            height: getVerticalSize(740),
                            child: TabBarView(
                              controller: tabController,
                              children: [
                                SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 24,
                                          right: 0,
                                        ),
                                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              top: 0,
                              right: 2,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  "Sort by",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: getFontSize(
                                      20,
                                    ),
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 1,
                                    bottom: 1,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        "Recently Downloaded",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.right,
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
                                      Padding(
                                        padding: getPadding(
                                          left: 14,
                                          top: 4,
                                          bottom: 4,
                                        ),
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgSort,
                                          height: getVerticalSize(
                                            12.00,
                                          ),
                                          width: getHorizontalSize(
                                            15.00,
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
                                     
                                     
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 24,
                                        ),
                                        child: ListView.builder(
                                          physics: BouncingScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount: 9,
                                          itemBuilder: (context, index) {
                                            return ListartistnameItemWidget();
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                             
                                SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 24,
                                          right: 0,
                                        ),
                                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              top: 0,
                              right: 2,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  "Sort by",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: getFontSize(
                                      20,
                                    ),
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 1,
                                    bottom: 1,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        "Recently Downloaded",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.right,
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
                                      Padding(
                                        padding: getPadding(
                                          left: 14,
                                          top: 4,
                                          bottom: 4,
                                        ),
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgSort,
                                          height: getVerticalSize(
                                            12.00,
                                          ),
                                          width: getHorizontalSize(
                                            15.00,
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
                                     
                                     
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 24,
                                        ),
                                        child: ListView.builder(
                                          physics: BouncingScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount: 9,
                                          itemBuilder: (context, index) {
                                            return ListcountryItemWidget();
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                             
                              
                             
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
