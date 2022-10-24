import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

// ignore: must_be_immutable
class Listsongtitle1ItemWidget extends StatelessWidget {
  Listsongtitle1ItemWidget();

  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return Padding(
      padding: getPadding(
        top: 10.0,
        bottom: 10.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    20.00,
                  ),
                ),
                child: CommonImageView(
                  imagePath: ImageConstant.imgImage12,
                  height: getSize(
                    80.00,
                  ),
                  width: getSize(
                    80.00,
                  ),
                ),
              ),
              Container(
                margin: getMargin(
                  left: 16,
                  right: 16,
                  top: 17,
                  bottom: 17,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "The Bended Man",
                      overflow: TextOverflow.ellipsis,
                      textAlign:   TextAlign.start,
                      style: TextStyle(
                           
                        fontSize: getFontSize(
                          18,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 10,
                        right: 10,
                      ),
                      child: Text(
                        "Sunwich",
                        overflow: TextOverflow.ellipsis,
                        textAlign:   TextAlign.start,
                        style: TextStyle(
                            
                          fontSize: getFontSize(
                            12,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: getPadding(
                  left: 0,
                  top: 26,
                  right: 8,
                  bottom: 26,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CommonImageView(
                      imagePath: ImageConstant.imgExclude,
                      height: getSize(
                        26.00,
                      ),
                      width: getSize(
                        26.00,
                      ),
                    ),
                   Theme(
                                        data: Theme.of(context).copyWith(
                                          dividerColor:isDark?ColorConstant.darkButton: ColorConstant.gray200,
                                          iconTheme: IconThemeData(color:isDark?ColorConstant.whiteA700: Colors.black),
                                          textTheme: TextTheme().apply(bodyColor:isDark?ColorConstant.whiteA700: Colors.black
                                          ),
                                        ),
                                        child: PopupMenuButton<int>(
                                          padding: EdgeInsets.only(
                                           right: getHorizontalSize(2)
                                          ),
                                          iconSize: getHorizontalSize(20),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(getHorizontalSize(20)),
                                            ),
                                          ),
                                          color:isDark?ColorConstant.darkBg: ColorConstant.whiteA700,
                                          onSelected: (item) => onSelected(context, item),
                                          itemBuilder: (context) => [
                                            PopupMenuItem<int>(
                          
                                              value: 0,
                                              child:  Container(
                                                child: Padding(
                        padding: getPadding(
                          left: 10,
                          top: 15,
                          right: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 1,
                                bottom: 1,
                              ),
                              child: CommonImageViewWithDarkOption(
                                isDark: isDark,
                                svgPath: ImageConstant.imgUser22X15,
                                height: getVerticalSize(
                                  16.00,
                                ),
                                width: getHorizontalSize(
                                  11.00,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 16,
                              ),
                              child: Text(
                                "View Artist",
                                overflow: TextOverflow.ellipsis,
                                textAlign:   TextAlign.start,
                                style: TextStyle(
                                     color: isDark?Colors.white:Colors.black,
                                  fontSize: getFontSize(
                                    14,
                                  ),
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                      
                                             
                                             
                                              ),
                                            ),
                                            PopupMenuDivider(),
                          
                                            PopupMenuItem<int>(
                                              value: 1,
                          
                                              child: Padding(
                          padding: getPadding(
                            left: 10,
                            top: 20,
                            right: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 2,
                                  bottom: 2,
                                ),
                                child: CommonImageViewWithDarkOption(
                                  isDark: isDark,
                                  svgPath: ImageConstant.imgClose15X15,
                                  height: getSize(
                                    15.00,
                                  ),
                                  width: getSize(
                                    15.00,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 14,
                                ),
                                child: Text(
                                  "Don’t Play This",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign:   TextAlign.start,
                                  style: TextStyle(
                                       color: isDark?Colors.white:Colors.black,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                       
                       
                                            
                                            )),
                                            PopupMenuDivider(),
                                            
                                          PopupMenuItem(
                                            value: 2,
                                            child:   Padding(
                        padding: getPadding(
                          left: 10,
                          top: 15,
                          right: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 2,
                                bottom: 2,
                              ),
                              child: CommonImageViewWithDarkOption(
                                isDark: isDark,
                                svgPath: ImageConstant.imgPlay,
                                height: getSize(
                                  15.00,
                                ),
                                width: getSize(
                                  15.00,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 14,
                              ),
                              child: Text(
                                "Go to Album",
                                overflow: TextOverflow.ellipsis,
                                textAlign:   TextAlign.start,
                                style: TextStyle(
                                     color:isDark?Colors.white:Colors.black ,
                                  fontSize: getFontSize(
                                    14,
                                  ),
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                                          ),
                                         PopupMenuDivider(),
                                         PopupMenuItem(
                                          value: 3,
                                          child:  Padding(
                        padding: getPadding(
                          left: 10,
                          top: 15,
                          right: 21,
                          bottom: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 1,
                                bottom: 1,
                              ),
                              child: CommonImageViewWithDarkOption(
                                isDark: isDark,
                                svgPath: ImageConstant.imgShare16X16,
                                height: getSize(
                                  16.00,
                                ),
                                width: getSize(
                                  16.00,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 13,
                              ),
                              child: Text(
                                "Share",
                              
                                overflow: TextOverflow.ellipsis,
                                textAlign:   TextAlign.start,
                                style: TextStyle(
                                     color: isDark?Colors.white:Colors.black,
                                  fontSize: getFontSize(
                                    14,
                                  ),
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      )
                                          ],
                                        ),
                                      ),
                  
                  
                  ],
                ),
              ),
            ],
          ),
       
       
       
        ],
      ),
    );
  }
  
  onSelected(BuildContext context, int item) {}
}
