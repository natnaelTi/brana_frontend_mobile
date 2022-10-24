import '../light_podcasts_downloaded_screen/widgets/listprice_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/widgets/custom_text_form_field.dart';

class LightPodcastsDownloadedScreen extends StatelessWidget {
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
                  Container(
                    width: size.width,
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
                                  "Podcasts",
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
                              CommonImageView(
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
                                child: CommonImageView(
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
                  Container(
                    width: double.infinity,
                    margin: getMargin(
                      top: 33,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            CustomTextFormField(
                              width: 127,
                              focusNode: FocusNode(),
                              hintText: "Your Likes",
                              margin: getMargin(
                                bottom: 2,
                              ),
                              variant: TextFormFieldVariant.UnderLineGray200,
                              padding: TextFormFieldPadding.PaddingB14,
                              fontStyle:
                                  TextFormFieldFontStyle.UrbanistSemiBold18,
                              textInputAction: TextInputAction.done,
                            ),
                            CustomTextFormField(
                              width: 127,
                              focusNode: FocusNode(),
                              hintText: "Queue",
                              margin: getMargin(
                                bottom: 2,
                              ),
                              variant: TextFormFieldVariant.UnderLineGray200,
                              padding: TextFormFieldPadding.PaddingB14,
                              fontStyle:
                                  TextFormFieldFontStyle.UrbanistSemiBold18,
                            ),
                            Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Downloaded",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: ColorConstant.greenA700,
                                      fontSize: getFontSize(
                                        18,
                                      ),
                                      fontFamily: 'Urbanist',
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.20,
                                    ),
                                  ),
                                  Container(
                                    height: getVerticalSize(
                                      4.00,
                                    ),
                                    width: getHorizontalSize(
                                      126.00,
                                    ),
                                    margin: getMargin(
                                      top: 12,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.greenA700,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          2.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              top: 24,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                        ),
                        Container(
                          height: getVerticalSize(
                            1.00,
                          ),
                          width: getHorizontalSize(
                            380.00,
                          ),
                          margin: getMargin(
                            top: 24,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.gray200,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 23,
                          ),
                          child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return ListpriceItemWidget();
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
