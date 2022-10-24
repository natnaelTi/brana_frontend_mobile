import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';
import '../light_song_play_screen/light_song_play_screen.dart';

class LightPodcastEpisodeDetailsScreen extends StatelessWidget {
  // List<String> dropdownItemList = ["test", "test1", "test2", "test3"];

  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
bool isRtl = context.locale==Constants.arLocal;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
               Align(
                alignment: Alignment.center,
                child: Container(
                  width: size.width,
                  margin: getMargin(
                    left: 20,
                    right: 20,
                    top: 37
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 3,
                          bottom: 2,
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
                      CommonImageViewWithDarkOption(
                        isDark: isDark,
                        svgPath: ImageConstant.imgMenu21X21,
                        height: getSize(
                          21.00,
                        ),
                        width: getSize(
                          21.00,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
                Padding(
                  padding: getPadding(
                    left: 20,
                    right: 20,
                    top: 24
                  ),
                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                      imagePath: ImageConstant.imgImage,
                                      height: getSize(
                                        100.00,
                                      ),
                                      width: getSize(
                                        100.00,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 16,
                                      top: 25,
                                      right: 37,
                                      bottom: 25,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "The Jordan Harbinger Show",
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
                                            top: 14,
                                            right: 10,
                                          ),
                                          child: Text(
                                            "Jordan Harbinger",
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
                ),
                            Padding(
                              padding: getPadding(
                                top: 20,
                                right: 20,
                                left: 20
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "1 day ago",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign:   TextAlign.start,
                                    style: TextStyle(
                                        
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      fontFamily: 'Urbanist',
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.20,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 14,
                                    ),
                                    child: Text(
                                      "|",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign:   TextAlign.start,
                                      style: TextStyle(
                                          
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.20,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 12,
                                    ),
                                    child: Text(
                                      "48:26 mins",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign:   TextAlign.start,
                                      style: TextStyle(
                                          
                                        fontSize: getFontSize(
                                          14,
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
                            Container(
                              width: getHorizontalSize(
                                380.00,
                              ),
                              margin: getMargin(
                                top: 20,
                                left: 20,
                                right: 20
                              ),
                              child: Text(
                                "691: Shaquille O’Neal | Circling Back on Flat Earth Theory",
                                maxLines: null,
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
                             Padding(
                              padding: getPadding(
                                top: 10,
                                right: 20,
                                left: 20
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                 InkWell(
                                   onTap: (){
                       Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          LightSongPlayScreen()),
                                );
                    },
                                   child: Container(
                                      decoration: BoxDecoration(
                                        color: ColorConstant.greenA700,
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            22.50,
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              left: 27,
                                              top: 14,
                                              bottom: 15,
                                            ),
                                            child: CommonImageView(
                                              svgPath: ImageConstant.imgOffer,
                                              height: getVerticalSize(
                                                15.00,
                                              ),
                                              width: getHorizontalSize(
                                                14.00,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 10,
                                              top: 10,
                                              right: 24,
                                              bottom: 10,
                                            ),
                                            child: Text(
                                              "Play",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: ColorConstant.whiteA700,
                                                fontSize: getFontSize(
                                                  18,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w700,
                                                letterSpacing: 0.20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                 ),
                                
                                
                                 Padding(
                                    padding: getPadding(
                                      left: 2,
                                      top: 13,
                                      bottom: 13,
                                    ),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CommonImageViewWithDarkOption(
                                          isDark: isDark,
                                          svgPath: ImageConstant.imgFavorite,
                                          height: getVerticalSize(
                                            18.00,
                                          ),
                                          width: getHorizontalSize(
                                            19.00,
                                          ),
                                        ),
                                        SizedBox(
                                          width:getHorizontalSize(32),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 0,
                                            top: 2,
                                            bottom: 1,
                                          ),
                                          child: CommonImageViewWithDarkOption(
                                            isDark: isDark,
                                            svgPath: ImageConstant.imgMenu,
                                            height: getVerticalSize(
                                              14.00,
                                            ),
                                            width: getHorizontalSize(
                                              20.00,
                                            ),
                                          ),
                                        ),
                                         SizedBox(
                                          width:getHorizontalSize(32),
                                        ),
                                        
                                        Padding(
                                          padding: getPadding(
                                            left: 0,
                                          ),
                                          child: CommonImageViewWithDarkOption(
                                            isDark: isDark,
                                            svgPath:
                                                ImageConstant.imgArrowdown18X18,
                                            height: getSize(
                                              18.00,
                                            ),
                                            width: getSize(
                                              18.00,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: getVerticalSize(
                                            16.00,
                                          ),
                                          width: getHorizontalSize(
                                            4.00,
                                          ),
                                          margin: getMargin(
                                            left: 0,
                                            top: 1,
                                            bottom: 1,
                                          ),
                                          decoration: BoxDecoration(
                                               
                                          ),
                                        ),
                                       SizedBox(
                                          width:getHorizontalSize(12),
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
                                    iconSize: getHorizontalSize(18),
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
                            ),
                           
                           
             
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: getMargin(
                    left: 24,
                    top: 0,
                    bottom: 30,
                    right: 24,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                   
                     
                      Container(
                        width: double.infinity,
                        margin: getMargin(
                          top: 37,
                        ),
                      
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                          
                           
                            // CustomDropDown(
                            //   width: 370,
                            //   focusNode: FocusNode(),
                            //   icon: Container(
                            //     margin: getMargin(
                            //       left: 30,
                            //       right: 30,
                            //     ),
                            //     child: CommonImageView(
                            //       svgPath: ImageConstant.imgArrowdown18X18,
                            //     ),
                            //   ),
                            //   hintText: "Play",
                            //   margin: getMargin(
                            //     top: 20,
                            //     right: 10,
                            //   ),
                            //   alignment: Alignment.center,
                            //   items: dropdownItemList,
                            //   prefix: Container(
                            //     padding: getPadding(
                            //       left: 22,
                            //       top: 12,
                            //       right: 30,
                            //       bottom: 13,
                            //     ),
                            //     margin: getMargin(),
                            //     decoration: BoxDecoration(
                            //       color: ColorConstant.greenA700,
                            //       borderRadius: BorderRadius.circular(
                            //         getHorizontalSize(
                            //           19.00,
                            //         ),
                            //       ),
                            //     ),
                            //     child: CommonImageView(
                            //       svgPath: ImageConstant.imgOffer,
                            //     ),
                            //   ),
                            //   prefixConstraints: BoxConstraints(
                            //     minWidth: getSize(
                            //       12.41,
                            //     ),
                            //     minHeight: getSize(
                            //       12.41,
                            //     ),
                            //   ),
                            //   onChanged: (value) {},
                            // ),
                           
                           
                            Column(
                              children: [
                                Container(
                                  width: getHorizontalSize(
                                    380.00,
                                  ),
                                  margin: getMargin(
                                    top: 20,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text:
                                              'Shaquille O\'Neal (@SHAQ) has been retired from basketball for years, but he’s still got his irons in plenty of fires. Here, we’ll discuss everything from superheroes to law enforcement to business to sports to podcasting to — yes — the Flat Earth Theory.\n\n',
                                          style: TextStyle(
                                            color: isDark?Colors.white:Colors.black,
                                              
                                            fontSize: getFontSize(
                                              16,
                                            ),
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 0.20,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              'What We Discuss with Shaquille O\'Neal:\n\n',
                                          style: TextStyle(
                                              color: isDark?Colors.white:Colors.black,
                                            fontSize: getFontSize(
                                              16,
                                            ),
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w700,
                                            letterSpacing: 0.20,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              'The real-world experience Shaq endured preparing for a political race in 2020.\nHow Shaq assembled what he calls The Panel to help manage not only his career but all his important life decisions — and how you can do the same.\nWhy Shaq doesn’t consider himself a celebrity (and why that still isn’t a good reason to bug him in the middle of dinner).\nHow Shaq manages his emotions so he stays non-reactive on and off the court.\nDoes Shaq really believe in the Flat Earth Theory?\nAnd much more...view here --',
                                          style: TextStyle(
                                            color: isDark?Colors.white:Colors.black,
                                              
                                            fontSize: getFontSize(
                                              16,
                                            ),
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 0.20,
                                          ),
                                        ),
                                      ],
                                    ),
                                    textAlign:   TextAlign.start,
                                  ),
                                ),
                          
                          
                                Container(
                                  width: getHorizontalSize(
                                    380.00,
                                  ),
                                  margin: getMargin(
                                    top: 20,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text:
                                              'Shaquille O\'Neal (@SHAQ) has been retired from basketball for years, but he’s still got his irons in plenty of fires. Here, we’ll discuss everything from superheroes to law enforcement to business to sports to podcasting to — yes — the Flat Earth Theory.\n\n',
                                          style: TextStyle(
                                            color: isDark?Colors.white:Colors.black,
                                              
                                            fontSize: getFontSize(
                                              16,
                                            ),
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 0.20,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              'What We Discuss with Shaquille O\'Neal:\n\n',
                                          style: TextStyle(
                                              color: isDark?Colors.white:Colors.black,
                                            fontSize: getFontSize(
                                              16,
                                            ),
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w700,
                                            letterSpacing: 0.20,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              'The real-world experience Shaq endured preparing for a political race in 2020.\nHow Shaq assembled what he calls The Panel to help manage not only his career but all his important life decisions — and how you can do the same.\nWhy Shaq doesn’t consider himself a celebrity (and why that still isn’t a good reason to bug him in the middle of dinner).\nHow Shaq manages his emotions so he stays non-reactive on and off the court.\nDoes Shaq really believe in the Flat Earth Theory?\nAnd much more...view here --',
                                          style: TextStyle(
                                            color: isDark?Colors.white:Colors.black,
                                              
                                            fontSize: getFontSize(
                                              16,
                                            ),
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 0.20,
                                          ),
                                        ),
                                      ],
                                    ),
                                    textAlign:   TextAlign.start,
                                  ),
                                ),
                              ],
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
  
  onSelected(BuildContext context, int item) {}
}
