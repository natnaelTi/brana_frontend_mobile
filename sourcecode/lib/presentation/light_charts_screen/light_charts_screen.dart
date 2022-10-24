import 'package:easy_localization/easy_localization.dart';

import '../light_charts_screen/widgets/autolayouthor1_item_widget.dart';
import '../light_charts_screen/widgets/autolayouthor2_item_widget.dart';
import '../light_charts_screen/widgets/autolayouthor3_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

class LightChartsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
bool isRtl = context.locale==Constants.arLocal;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
             Align(
                alignment: Alignment.center,
                child: Container(
                  width: size.width,
                  margin: getMargin(
                    right: 20,
                    left: 20,
                    top: 24
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
                              child: CommonImageViewWithDarkOption(
                                isBackBtn: true,
                                isDark: isDark,
                                isRtl: isRtl,
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
                                "Charts",
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
              ),
              
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: getMargin(
                    left: 0,
                    top: 24,
                    right: 0,
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
                              padding: getPadding(
                                right: 20,
                                left: 20
                              ),
                              child: Text(
                                "Weekly Album Charts",
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
                                240.00,
                              ),
                            
                              child: ListView.builder(
                                padding: getPadding(
                                  top: 16,
                                  left: 20,
                                  right: 20
                                ),
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                itemCount: 4,
                                itemBuilder: (context, index) {
                                  return Autolayouthor1ItemWidget();
                                },
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 32,
                                right: 20,
                                left: 20
                              ),
                              child: Text(
                                "Weekly Song Charts",
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
                                240.00,
                              ),
                              
                              child: ListView.builder(
                                padding: getPadding(
                                  top: 16,
                                  left: 20,
                                  right: 20
                                ),
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                itemCount: 4,
                                itemBuilder: (context, index) {
                                  return Autolayouthor2ItemWidget();
                                },
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 32,
                                right: 20,
                                left: 20
                              ),
                              child: Text(
                                "Daily Viral Charts",
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
                                240.00,
                              ),
                             
                              child: ListView.builder(
                                padding: getPadding(
                                  top: 16,
                                  left: 20,
                                  right: 20
                                ),
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                itemCount: 4,
                                itemBuilder: (context, index) {
                                  return Autolayouthor3ItemWidget();
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
          ],
        ),
      ),
    );
  }
}
