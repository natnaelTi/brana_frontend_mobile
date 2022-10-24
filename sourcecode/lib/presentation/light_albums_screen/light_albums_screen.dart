import 'package:easy_localization/easy_localization.dart';

import '../light_albums_screen/widgets/listloremipsum_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

class LightAlbumsScreen extends StatelessWidget {
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
                 top: 33,
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
                           ),
                           child: Text(
                             "Albums",
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
                       right: 3,
                       bottom: 2,
                     ),
                     child: Row(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisSize: MainAxisSize.min,
                       children: [
                         CommonImageViewWithDarkOption(
                           isDark: isDark,
                           svgPath: ImageConstant.imgSearchGray900,
                           height: getVerticalSize(
                             22.00,
                           ),
                           width: getHorizontalSize(
                             21.00,
                           ),
                         ),
                         Padding(
                           padding: getPadding(
                             left: 26,
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
                 ],
               ),
             ),
             
            Padding(
              padding: getPadding(
                left: 24,
                top: 33,
                right: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "Sort by",
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
                  Padding(
                    padding: getPadding(
                      top: 1,
                      bottom: 1,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Recently Added",
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
           
           
           
            Expanded(
              child: ListView.builder(
                 padding: getPadding(
                left: 24,
                top: 23,
                right: 24,
                bottom: 10,
              ),
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 7,
                itemBuilder: (context, index) {
                  return ListloremipsumItemWidget();
                },
              ),
            ),
          
          
          
          ],
        ),
      ),
    );
  }
}
