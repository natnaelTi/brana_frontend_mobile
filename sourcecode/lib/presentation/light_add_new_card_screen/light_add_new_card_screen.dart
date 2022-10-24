import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/widgets/custom_button.dart';
import 'package:hearme/widgets/custom_text_form_field.dart';

class LightAddNewCardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
bool isRtl = context.locale==Constants.arLocal;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
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
                                  "Add New Card",
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
                            top: 4,
                            bottom: 4,
                          ),
                          child: CommonImageViewWithDarkOption(
                            isDark: isDark,
                            svgPath: ImageConstant.imgRefresh,
                            height: getVerticalSize(
                              20.00,
                            ),
                            width: getHorizontalSize(
                              24.00,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      239.00,
                    ),
                    // width: getHorizontalSize(
                    //   380.00,
                    // ),
                    margin: getMargin(
                      left: 20,
                      top: 33,
                      right: 20,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center
                          ,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                32.00,
                              ),
                            ),
                            child: Image.asset(
                               ImageConstant.addNewCard,
                              height: getVerticalSize(
                                239.00,
                              ),
                              width: size.width,
                             
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 30,
                              top: 30,
                              right: 30,
                              bottom: 24,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          right: 10,
                                        ),
                                        child: Text(
                                          "Mocard",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign:   TextAlign.start,
                                          style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize: getFontSize(
                                              16,
                                            ),
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w700,
                                            letterSpacing: 0.20,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 32,
                                        ),
                                        child: Text(
                                          "•••• •••• •••• ••••",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign:   TextAlign.start,
                                          style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize: getFontSize(
                                              48,
                                            ),
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 32,
                                          right: 10,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              child: Column(
                                                mainAxisSize:
                                                    MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Card Holder name",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign:   TextAlign.start,
                                                    style: TextStyle(
                                                      color: ColorConstant
                                                          .whiteA700,
                                                      fontSize: getFontSize(
                                                        10,
                                                      ),
                                                      fontFamily: 'Urbanist',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      letterSpacing: 0.20,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 4,
                                                      right: 10,
                                                    ),
                                                    child: Text(
                                                      "•••• ••••",
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                            TextAlign.start,
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .whiteA700,
                                                        fontSize: getFontSize(
                                                          14,
                                                        ),
                                                        fontFamily:
                                                            'Urbanist',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        letterSpacing: 0.20,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: getMargin(
                                                left: 52,
                                              ),
                                              child: Column(
                                                mainAxisSize:
                                                    MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Expiry date",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign:   TextAlign.start,
                                                    style: TextStyle(
                                                      color: ColorConstant
                                                          .whiteA700,
                                                      fontSize: getFontSize(
                                                        10,
                                                      ),
                                                      fontFamily: 'Urbanist',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      letterSpacing: 0.20,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 4,
                                                      right: 10,
                                                    ),
                                                    child: Text(
                                                      "••••/••••",
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                            TextAlign.start,
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .whiteA700,
                                                        fontSize: getFontSize(
                                                          14,
                                                        ),
                                                        fontFamily:
                                                            'Urbanist',
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 24,
                                    bottom: 1,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgAutolayoutver,
                                    height: getVerticalSize(
                                      179.00,
                                    ),
                                    width: getHorizontalSize(
                                      60.00,
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Card Name",
                          overflow: TextOverflow.ellipsis,
                          textAlign:   TextAlign.start,
                          style: TextStyle(
                               
                            fontSize: getFontSize(
                              18,
                            ),
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomTextFormField(
                    width: 380,
                    focusNode: FocusNode(),
                    hintText: "Andrew Ainsley",
                    margin: getMargin(
                      left: 24,
                      top: 12,
                      right: 24,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 24,
                      right: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Card Number",
                          overflow: TextOverflow.ellipsis,
                          textAlign:   TextAlign.start,
                          style: TextStyle(
                               
                            fontSize: getFontSize(
                              18,
                            ),
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomTextFormField(
                    width: 380,
                    focusNode: FocusNode(),
                    hintText: "2672 4738 7837 7285",
                    margin: getMargin(
                      left: 24,
                      top: 12,
                      right: 24,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 24,
                      right: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Expiry Date",
                                overflow: TextOverflow.ellipsis,
                                textAlign:   TextAlign.start,
                                style: TextStyle(
                                     
                                  fontSize: getFontSize(
                                    18,
                                  ),
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.20,
                                ),
                              ),
                               CustomTextFormField(
                                width: 180,
                                focusNode: FocusNode(),
                                hintText: "04/23",
                                margin: getMargin(
                                  top: 12,
                                ),
                                suffixConstraints: BoxConstraints(
                        minWidth: getHorizontalSize(
                          15.46,
                        ),
                        minHeight: getVerticalSize(
                          16.67,
                        ),
                      ),
                                suffix:  Padding(
                                      padding: getPadding(
                                        top: 19,
                                        right: 22,
                                        bottom: 19,
                                      ),
                                      child: CommonImageView(
                                        svgPath: ImageConstant.imgCalendar,
                                        height: getVerticalSize(
                                          16.00,
                                        ),
                                        width: getHorizontalSize(
                                          15.00,
                                        ),
                                      ),
                                    ),
                                textInputAction: TextInputAction.done,
                              ),
                              
                           
                           
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "CVV",
                                overflow: TextOverflow.ellipsis,
                                textAlign:   TextAlign.start,
                                style: TextStyle(
                                     
                                  fontSize: getFontSize(
                                    18,
                                  ),
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.20,
                                ),
                              ),
                              CustomTextFormField(
                                width: 180,
                                focusNode: FocusNode(),
                                hintText: "699",
                                margin: getMargin(
                                  top: 12,
                                ),
                                textInputAction: TextInputAction.done,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomButton(
                    width: 380,
                    text: "Add",
                    margin: getMargin(
                      left: 24,
                      top: 66,
                      right: 24,
                      bottom: 20,
                    ),
                    variant: ButtonVariant.OutlineGreenA7003f,
                    shape: ButtonShape.CircleBorder29,
                    padding: ButtonPadding.PaddingAll18,
                    fontStyle: ButtonFontStyle.UrbanistRomanBold16,
                    onTap: (){
                      Navigator.pop(context);
                    },
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
