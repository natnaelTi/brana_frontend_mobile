import 'package:animate_do/animate_do.dart';
import 'package:hearme/presentation/light_search_type_keyword_screen/light_search_type_keyword_screen.dart';
import '../light_explore_screen/widgets/gridcategories1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

// ignore_for_file: must_be_immutable
class LightExploreScreen extends StatelessWidget {
  TextEditingController stateDefaultSController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: getVerticalSize(50),
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
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            16.00,
                          ),
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.imgTypelogodefau,
                          height: getSize(
                            32.00,
                          ),
                          width: getSize(
                            32.00,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 16,
                          top: 1,
                          bottom: 1,
                        ),
                        child: Text(
                          "Explore",
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
                  Padding(
                    padding: getPadding(
                      top: 5,
                      bottom: 5,
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
            Padding(
                padding: getPadding(top: 24),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LightSearchTypeKeywordScreen()),
                    );
                  },
                  child: Container(
                    margin: getMargin(
                      left: 20,
                      right: 20,
                    ),
                    padding: getPadding(all: 20),
                    decoration: BoxDecoration(
                      color: isDark
                          ? ColorConstant.darkTextField
                          : ColorConstant.gray100,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      children: [
                        CommonImageView(
                          svgPath: ImageConstant.imgSearchGray400,
                        ),
                        SizedBox(
                          width: getHorizontalSize(20),
                        ),
                        Text("Artists, Songs, Podcasts, & More",
                            style: TextStyle(
                              color: ColorConstant.gray500,
                              fontSize: getFontSize(
                                14,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w400,
                            )),
                      ],
                    ),
                  ),
                )),
            Expanded(
              child: FadeInLeft(
                child: Container(
                  width: size.width,
                  child: SingleChildScrollView(
                    child: Container(
                      margin: getMargin(
                        top: 0,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: double.infinity,
                              margin: getMargin(
                                left: 24,
                                top: 24,
                                right: 24,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 24,
                                      right: 10,
                                    ),
                                    child: Text(
                                      "Browse All",
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
                                  ),
                                  Padding(
                                    padding: getPadding(top: 12, bottom: 30),
                                    child: GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                        mainAxisExtent: getVerticalSize(
                                          121.00,
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
                                      itemCount: 10,
                                      itemBuilder: (context, index) {
                                        return Gridcategories1ItemWidget();
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
