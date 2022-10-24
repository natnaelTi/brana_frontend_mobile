import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hearme/presentation/light_add_new_card_screen/light_add_new_card_screen.dart';
import 'package:hearme/presentation/light_select_payment_methods_2_screen/review_summary.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/widgets/custom_button.dart';

class LightSelectPaymentMethods2Screen extends StatefulWidget {
  @override
  State<LightSelectPaymentMethods2Screen> createState() =>
      _LightSelectPaymentMethods2ScreenState();
}

class _LightSelectPaymentMethods2ScreenState
    extends State<LightSelectPaymentMethods2Screen> {
  int radioGroup = 100;
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
                            isBackBtn: true,
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
                        SizedBox(
                          width: getHorizontalSize(20),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 0,
                          ),
                          child: Text(
                            "Payment",
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
                      top: 4,
                      bottom: 4,
                    ),
                    child: CommonImageView(
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
                        top: 33,
                        right: 24,
                      ),
                      child: Text(
                        "Select the payment method you want to use.",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.justify,
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
                    Padding(
                      padding: getPadding(
                        left: 24,
                        top: 24,
                        right: 24,
                      ),
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: paymentMethidsList.length,
                        itemBuilder: (context, index) {
                          return Container(
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
                              onTap: () {
                                setState(() {
                                  radioGroup = index;
                                });
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
                                            paymentMethidsList[index].paymentImg,
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
                                          paymentMethidsList[index].paymentTitle,
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
                                    child: Theme(
                                      data: Theme.of(context).copyWith(
                                        unselectedWidgetColor:
                                            ColorConstant.greenA700,
                                        // disabledColor: Colors.blue
                                      ),
                                      child: Radio(
                                        value: index,
                                        activeColor: ColorConstant.greenA700,
                                        groupValue: radioGroup,
                                        onChanged: (value) {
                                          setState(() {
                                            radioGroup = value as int;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                       
                       
                       
                        },
                      ),
                    ),
                  
                    CustomButton(
                      width: 380,
                      text: "Add New Card",
                      margin: getMargin(
                        left: 24,
                        top: 24,
                        right: 24,
                      ),
                      onTap: (){
                        Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>LightAddNewCardScreen()),
  );
                      },
                      variant: ButtonVariant.FillGreen50,
                      shape: ButtonShape.CircleBorder29,
                      padding: ButtonPadding.PaddingAll18,
                      fontStyle: ButtonFontStyle.UrbanistRomanBold16GreenA700,
                    ),
                  
                 
                  ],
                ),
              ),
            ),
              CustomButton(
                      width: 380,
                      text: "Continue",
                      onTap: (){
                        Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>ReviewSummaryScreen()),
  );
                      },
                      margin: getMargin(
                        left: 24,
                        top: 0,
                        right: 24,
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
    );
  }


List<PaymentMethod>paymentMethidsList=[
  PaymentMethod(paymentTitle: "PayPal", paymentImg: ImageConstant.paypal),
  PaymentMethod(paymentTitle: "Goolge pay", paymentImg: ImageConstant.google),
  PaymentMethod(paymentTitle: "Apple pay", paymentImg: ImageConstant.apple),
  PaymentMethod(paymentTitle: "•••• •••• •••• •••• 4679", 
  paymentImg: ImageConstant.masterCard),
];

}

class PaymentMethod {
   String paymentTitle;
  String paymentImg;
  PaymentMethod(
    {required this.paymentTitle,required this.paymentImg}
  );
}
