import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/presentation/light_select_payment_methods_2_screen/light_select_payment_methods_2_screen.dart';
import 'package:hearme/presentation/light_select_payment_methods_2_screen/subSuccessDialog.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/my_divider.dart';
import '../light_subscribe_to_premium_screen/widgets/listcart_item_widget.dart';

class ReviewSummaryScreen extends StatelessWidget {
  const ReviewSummaryScreen({Key? key}) : super(key: key);

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
                SizedBox(
                  width: getHorizontalSize(20),
                ),
                  Padding(
                padding: getPadding(
                  top: 0,
                ),
                child: Text(
                  "Preview Summary",
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
             
                
                ],
              ),
              Container(
                padding: getPadding(
                  top: 39,
                ),
              
              
              ),
             
             
             
             
              Expanded(
                child:  SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ListcartItemWidget(),
                      SizedBox(
                        height: getVerticalSize(24),
                
                      ),
                      Padding(
                        padding: getPadding(
                          left: 0,
                          right: 0
                        ),
                        child: Container(
                           padding: EdgeInsets.only(
                              top: getVerticalSize(
                                24.00,
                              ),
                              bottom: getVerticalSize(
                                24.00,
                              ),
                              left: getHorizontalSize(24),
                              right: getHorizontalSize(24)
                            ),
                            decoration: BoxDecoration(
                              color: isDark
                                  ? ColorConstant.darkTextField
                                  : ColorConstant.whiteA700,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  16.00,
                                ),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: isDark
                                      ? Colors.transparent
                                      : ColorConstant.black9000c,
                                  spreadRadius: getHorizontalSize(
                                    2.00,
                                  ),
                                  blurRadius: getHorizontalSize(
                                    2.00,
                                  ),
                                  offset: Offset(
                                    0,
                                    4,
                                  ),
                                ),
                              ],
                            ),
                          
                          
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Amount",
                                  style: TextStyle(
                                    color:isDark?Colors.white: ColorConstant.gray700,
                                    fontFamily: "Urbanist",
                                    fontSize: getSize(14),
                                    fontWeight: FontWeight.w500
                                  ),
                                  ),
                                    Text("${Constants.currency}9.99",
                                  style: TextStyle(
                                    
                                    fontFamily: "Urbanist",
                                    fontSize: getSize(16),
                                    fontWeight: FontWeight.w600
                                  ),
                                  ),
                                ],
                              ),
                           SizedBox(
                            height: getVerticalSize(20),
                           ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Tax",
                                  style: TextStyle(
                                    color:isDark?Colors.white: ColorConstant.gray700,
                                    fontFamily: "Urbanist",
                                    fontSize: getSize(14),
                                    fontWeight: FontWeight.w500
                                  ),
                                  ),
                                    Text("${Constants.currency}1.99",
                                  style: TextStyle(
                                    
                                    fontFamily: "Urbanist",
                                    fontSize: getSize(16),
                                    fontWeight: FontWeight.w600
                                  ),
                                  ),
                                ],
                              ),
                           SizedBox(
                            
                            height: getVerticalSize(20),
                           ),
                           MyDivider(isDark: isDark),
                           
                           
                           SizedBox(
                            
                            height: getVerticalSize(20),
                           ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Total",
                                  style: TextStyle(
                                    color:isDark?Colors.white: ColorConstant.gray700,
                                    fontFamily: "Urbanist",
                                    fontSize: getSize(14),
                                    fontWeight: FontWeight.w500
                                  ),
                                  ),
                                    Text("${Constants.currency}11.99",
                                  style: TextStyle(
                                    
                                    fontFamily: "Urbanist",
                                    fontSize: getSize(16),
                                    fontWeight: FontWeight.w600
                                  ),
                                  ),
                                ],
                              ),
                           SizedBox(
                            height: getVerticalSize(20),
                           ),
                            ],
                          ),
                        ),
                      ),
                SizedBox(),
                Container(
                            margin: EdgeInsets.only(
                              top: getVerticalSize(
                                12.00,
                              ),
                              bottom: getVerticalSize(
                                12.00,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: isDark
                                  ? ColorConstant.darkTextField
                                  : ColorConstant.whiteA700,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  16.00,
                                ),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: isDark
                                      ? Colors.transparent
                                      : ColorConstant.black9000c,
                                  spreadRadius: getHorizontalSize(
                                    2.00,
                                  ),
                                  blurRadius: getHorizontalSize(
                                    2.00,
                                  ),
                                  offset: Offset(
                                    0,
                                    4,
                                  ),
                                ),
                              ],
                            ),
                          
                          
                            child: InkWell(
                              radius: getHorizontalSize(16),
                             onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context)
                            =>LightSelectPaymentMethods2Screen()),
                              );
                             },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: context.locale ==
                                                  Constants.engLocal
                                              ? getHorizontalSize(
                                                  20.00,
                                                )
                                              : getHorizontalSize(0),
                                          right: context.locale ==
                                                  Constants.arLocal
                                              ? getHorizontalSize(
                                                  20.00,
                                                )
                                              : getHorizontalSize(0),
                                          top: getVerticalSize(
                                            27.00,
                                          ),
                                          bottom: getVerticalSize(
                                            27.00,
                                          ),
                                        ),
                                        child: Container(
                                          height: getVerticalSize(
                                            26.00,
                                          ),
                                          width: getHorizontalSize(
                                            22.00,
                                          ),
                                          child: SvgPicture.asset(
                                            ImageConstant.masterCard,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            17.00,
                                          ),
                                          right: getHorizontalSize(
                                            17.00,
                                          ),
                                          top: getVerticalSize(
                                            29.00,
                                          ),
                                          bottom: getVerticalSize(
                                            29.41,
                                          ),
                                        ),
                                        child: Text(
                                          "•••• •••• •••• •••• 4679",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                            fontSize: getFontSize(
                                              18,
                                            ),
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        16.00,
                                      ),
                                      right: getHorizontalSize(
                                        16.00,
                                      ),
                                    ),
                                    child: Text("Change",
                                    style: TextStyle(
                                      color: ColorConstant.greenA700,
                                      fontSize: getFontSize(16),
                                      fontFamily: "Urbanist",
                                      fontWeight: FontWeight.w700
                                    ),)
                                  ),
                              
                              
                                ],
                              ),
                            ),
                          )
                    ],
                  ),
                ),

                  
              ),
           
         CustomButton(
                      width: 380,
                      text: "Continue",
                      onTap: (){
                      showDialog(context: context,
        builder: (BuildContext context) {
          return SubSuccessfulDialog();
       
        });
                      },
                      margin: getMargin(
                        left: 0,
                        top: 0,
                        right: 0,
                        bottom: 20,
                        
                      ),
                      variant: ButtonVariant.OutlineGreenA7003f,
                      shape: ButtonShape.CircleBorder29,
                      padding: ButtonPadding.PaddingAll18,
                      fontStyle: ButtonFontStyle.UrbanistRomanBold16,
                    ),
                    
            ],
          ),
        ),
      ),
    );
  }
    
  }

