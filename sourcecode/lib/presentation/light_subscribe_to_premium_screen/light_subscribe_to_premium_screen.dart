import 'package:easy_localization/easy_localization.dart';

import '../light_subscribe_to_premium_screen/widgets/listcart_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

class LightSubscribeToPremiumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
bool isRtl = context.locale==Constants.arLocal;
    return Scaffold(
     
      body: SafeArea(
        child: Container(
          margin: getMargin(
            left: 24,
            top: 40,
            right: 24,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 4,
                      right: 10,
                    ),
                    child: CommonImageViewWithDarkOption(
                      isDark:isDark ,
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
                ],
              ),
              Padding(
                padding: getPadding(
                  top: 39,
                ),
                child: Text(
                  "Subscribe to Premium",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ColorConstant.greenA700,
                    fontSize: getFontSize(
                      32,
                    ),
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                width: getHorizontalSize(
                  380.00,
                ),
                margin: getMargin(
                  top: 12,
                ),
                child: Text(
                  "Enjoy listening songs & podcast with better audio quality, without restrictions, and without ads.",
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      
                    fontSize: getFontSize(
                      16,
                    ),
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.20,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: getPadding(
                  top: 24,
                ),
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return ListcartItemWidget();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
