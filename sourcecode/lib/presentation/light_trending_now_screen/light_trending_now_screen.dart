import 'package:easy_localization/easy_localization.dart';

import '../light_trending_now_screen/widgets/gridloremipsumdol2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

class LightTrendingNowScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
bool isRtl = context.locale==Constants.arLocal;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                width: size.width,
                margin: getMargin(
                  left: 24,
                  top: 24,
                  right: 24,
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
                        mainAxisSize: MainAxisSize.max,
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
                            ),
                            child: Text(
                              "Trending Now",
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
                      child: CommonImageViewWithDarkOption(
                        isDark: isDark,
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
              
            
            Expanded(
              child: Padding(
                padding: getPadding(
                  left: 24,
                  top: 24,
                  bottom: 24,
                  right: 24,
                ),
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: getVerticalSize(
                      247.00,
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
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Gridloremipsumdol2ItemWidget();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
