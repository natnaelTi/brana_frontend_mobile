import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/presentation/light_lets_you_in_screen/light_lets_you_in_screen.dart';
import 'package:hearme/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LightWalkthroughScreen extends StatefulWidget {
  @override
  State<LightWalkthroughScreen> createState() => _LightWalkthroughScreenState();
}

class _LightWalkthroughScreenState extends State<LightWalkthroughScreen> {
  int activeIndex = 0;
  PageController? _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    _pageController = new PageController(initialPage: _currentIndex);
    _pageController!.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: size.height,
                child: PageView(
                    controller: _pageController,
                    onPageChanged: (index) {
                      _currentIndex = index;
                      setState(() {});
                    },
                    children: [
                      Container(
                        height: size.height,
                        width: size.width,
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Image.asset(
                              isDark
                                  ? ImageConstant.darkWalkthrough
                                  : ImageConstant.walkthrough,
                              height: size.height / 1.3,
                              width: size.width,
                              fit: BoxFit.fill,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                margin: getMargin(
                                  bottom: 40,
                                ),
                                decoration: BoxDecoration(
                                  color: isDark
                                      ? ColorConstant.darkBg
                                      : ColorConstant.whiteA700,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                      getHorizontalSize(
                                        60.00,
                                      ),
                                    ),
                                    topRight: Radius.circular(
                                      getHorizontalSize(
                                        60.00,
                                      ),
                                    ),
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: getHorizontalSize(
                                        380.00,
                                      ),
                                      margin: getMargin(
                                        left: 24,
                                        top: 20,
                                        right: 24,
                                      ),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text:
                                                  'Listen to the best music everyday with ',
                                              style: TextStyle(
                                                color: isDark
                                                    ? Colors.white
                                                    : Colors.black,
                                                fontSize: getFontSize(
                                                  40,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'Hearme',
                                              style: TextStyle(
                                                color: ColorConstant.greenA700,
                                                fontSize: getFontSize(
                                                  40,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' now!',
                                              style: TextStyle(
                                                color: isDark
                                                    ? Colors.white
                                                    : Colors.black,
                                                fontSize: getFontSize(
                                                  40,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    CustomButton(
                                      width: 380,
                                      text: "Next",
                                      margin: getMargin(
                                        left: 24,
                                        top: 40,
                                        right: 24,
                                        bottom: 20,
                                      ),
                                      onTap: () {
                                        _pageController!.animateToPage(
                                            _currentIndex + 1,
                                            duration: Duration(seconds: 1),
                                            curve: Curves.fastOutSlowIn);
                                      },
                                      variant: ButtonVariant.OutlineGreenA7003f,
                                      shape: ButtonShape.CircleBorder29,
                                      padding: ButtonPadding.PaddingAll18,
                                      fontStyle:
                                          ButtonFontStyle.UrbanistRomanBold16,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: size.height,
                        width: size.width,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Image.asset(
                              isDark
                                  ? ImageConstant.darkWalkthrough
                                  : ImageConstant.walkthrough,
                              height: size.height / 1.3,
                              width: size.width,
                              fit: BoxFit.fill,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                margin: getMargin(
                                  bottom: 40,
                                ),
                                decoration: BoxDecoration(
                                  color: isDark
                                      ? ColorConstant.darkBg
                                      : ColorConstant.whiteA700,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                      getHorizontalSize(
                                        60.00,
                                      ),
                                    ),
                                    topRight: Radius.circular(
                                      getHorizontalSize(
                                        60.00,
                                      ),
                                    ),
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: getHorizontalSize(
                                        380.00,
                                      ),
                                      margin: getMargin(
                                        left: 24,
                                        top: 20,
                                        right: 24,
                                      ),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text:
                                                  'Listen to the best music everyday with ',
                                              style: TextStyle(
                                                color: isDark
                                                    ? Colors.white
                                                    : Colors.black,
                                                fontSize: getFontSize(
                                                  40,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'Hearme',
                                              style: TextStyle(
                                                color: ColorConstant.greenA700,
                                                fontSize: getFontSize(
                                                  40,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' now!',
                                              style: TextStyle(
                                                color: isDark
                                                    ? Colors.white
                                                    : Colors.black,
                                                fontSize: getFontSize(
                                                  40,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    CustomButton(
                                      width: 380,
                                      text: "Next",
                                      margin: getMargin(
                                        left: 24,
                                        top: 40,
                                        right: 24,
                                        bottom: 20,
                                      ),
                                      onTap: () {
                                        _pageController!.animateToPage(
                                            _currentIndex + 1,
                                            duration: Duration(seconds: 1),
                                            curve: Curves.fastOutSlowIn);
                                      },
                                      variant: ButtonVariant.OutlineGreenA7003f,
                                      shape: ButtonShape.CircleBorder29,
                                      padding: ButtonPadding.PaddingAll18,
                                      fontStyle:
                                          ButtonFontStyle.UrbanistRomanBold16,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: size.height,
                        width: size.width,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Image.asset(
                              isDark
                                  ? ImageConstant.darkWalkthrough
                                  : ImageConstant.walkthrough,
                              height: size.height / 1.3,
                              width: size.width,
                              fit: BoxFit.fill,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                margin: getMargin(
                                  bottom: 40,
                                ),
                                decoration: BoxDecoration(
                                  color: isDark
                                      ? ColorConstant.darkBg
                                      : ColorConstant.whiteA700,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                      getHorizontalSize(
                                        60.00,
                                      ),
                                    ),
                                    topRight: Radius.circular(
                                      getHorizontalSize(
                                        60.00,
                                      ),
                                    ),
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: getHorizontalSize(
                                        380.00,
                                      ),
                                      margin: getMargin(
                                        left: 24,
                                        top: 20,
                                        right: 24,
                                      ),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text:
                                                  'Listen to the best music everyday with ',
                                              style: TextStyle(
                                                color: isDark
                                                    ? Colors.white
                                                    : Colors.black,
                                                fontSize: getFontSize(
                                                  40,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'Hearme',
                                              style: TextStyle(
                                                color: ColorConstant.greenA700,
                                                fontSize: getFontSize(
                                                  40,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' now!',
                                              style: TextStyle(
                                                color: isDark
                                                    ? Colors.white
                                                    : Colors.black,
                                                fontSize: getFontSize(
                                                  40,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    CustomButton(
                                      width: 380,
                                      text: "Get Started",
                                      margin: getMargin(
                                        left: 24,
                                        top: 40,
                                        right: 24,
                                        bottom: 20,
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  LightLetsYouInScreen()),
                                        );
                                      },
                                      variant: ButtonVariant.OutlineGreenA7003f,
                                      shape: ButtonShape.CircleBorder29,
                                      padding: ButtonPadding.PaddingAll18,
                                      fontStyle:
                                          ButtonFontStyle.UrbanistRomanBold16,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
              ),
              Container(
                height: size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: getVerticalSize(
                          8.00,
                        ),
                        margin: getMargin(
                          left: 24,
                          bottom: 130,
                          right: 24,
                        ),
                        child: AnimatedSmoothIndicator(
                          activeIndex: _currentIndex,
                          count: 3,
                          axisDirection: Axis.horizontal,
                          effect: ScrollingDotsEffect(
                            spacing: 6,
                            activeDotColor: ColorConstant.greenA700,
                            dotColor: ColorConstant.gray300,
                            dotHeight: getVerticalSize(
                              8.00,
                            ),
                            dotWidth: getHorizontalSize(
                              8.00,
                            ),
                          ),
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
    );
  }
}
