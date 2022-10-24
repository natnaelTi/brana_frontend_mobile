import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/presentation/light_fill_your_profile_blank_form_screen/light_fill_your_profile_blank_form_screen.dart';

// ignore_for_file: must_be_immutable
class LightProfileDetailsScreen extends StatefulWidget { 
  bool isArtist;
  LightProfileDetailsScreen({required this.isArtist});
  @override
  State<LightProfileDetailsScreen> createState() => _LightProfileDetailsScreenState();
}

class _LightProfileDetailsScreenState extends State<LightProfileDetailsScreen> {
  bool following=false;
  
 


  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
bool isRtl = context.locale==Constants.arLocal;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
              Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: size.width,
                        margin: getMargin(
                          left: 20,
                          right: 20,
                          top: 24
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
                                isRtl: isRtl,
                                isDark: isDark,
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
                 
                 
            Expanded(
      
              child: SingleChildScrollView(
                child: Container(
                  margin: getMargin(
                    left: 24,
                    top: 24,
                    right: 24,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 48,
                                right: 48,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    125.00,
                                  ),
                                ),
                                child: CommonImageView(
                                  imagePath:widget.isArtist? ImageConstant.imgEllipse:ImageConstant.profileImage,
                                  height: getSize(
                                    250.00,
                                  ),
                                  width: getSize(
                                    250.00,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 20,
                            ),
                            child: Text(
                              widget.isArtist?
                              "Jenny Wilson":"Andrew Ainsley",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                   
                                fontSize: getFontSize(
                                  32,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                         widget. isArtist?
                            GestureDetector(
                onTap: (){
                  setState(() {
                   following=true;
                  });
                },
                child: Container(
                  width: getHorizontalSize(112),
                  padding: getPadding(
                    left: 10,
                    right: 10,
                    top: 10,
                    bottom: 10
                  ),
              
                   margin: getMargin(
                    left: 0,
                    top: 0,
                    bottom: 0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: ColorConstant.greenA700),
                    color: following?Colors.transparent:ColorConstant.greenA700
                  ),
                  
                  child:Text( following?"Following":"Follow",
                  textAlign: TextAlign.center,
                  
                  style: TextStyle(
                        color:following?ColorConstant.greenA700: ColorConstant.whiteA700,
                        fontSize: getFontSize(
                18,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w600,
                      )
                  
                  
                  
                  ,)
                  
                  
                  
                 
                ),
              )
           
                          :
                          GestureDetector(
                onTap: (){
                 Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>LightFillYourProfileBlankFormScreen()),
  );
                },
                child: Container(
                  width: getHorizontalSize(112),
                  padding: getPadding(
                    left: 10,
                    right: 10,
                    top: 10,
                    bottom: 10
                  ),
              
                   margin: getMargin(
                    left: 0,
                    top: 0,
                    bottom: 0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: ColorConstant.greenA700),
                    color:Colors.transparent
                  ),
                  
                  child:Text( "Edit Profile",
                  textAlign: TextAlign.center,
                  
                  style: TextStyle(
                        color:ColorConstant.greenA700,
                        fontSize: getFontSize(
                18,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w600,
                      )
                  
                  
                  
                  ,)
                  
                  
                  
                 
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
                              top: 20,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray200,
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 48,
                                top: 19,
                                right: 48,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            left: 39,
                                            right: 39,
                                          ),
                                          child: Text(
                                            "9,489",
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
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: getPadding(
                                              top: 8,
                                            ),
                                            child: Text(
                                              "Followers",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  
                                                fontSize: getFontSize(
                                                  18,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w500,
                                                letterSpacing: 0.20,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 8,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            left: 38,
                                            right: 38,
                                          ),
                                          child: Text(
                                            "2,475",
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
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: getPadding(
                                              top: 8,
                                            ),
                                            child: Text(
                                              "Following",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  
                                                fontSize: getFontSize(
                                                  18,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w500,
                                                letterSpacing: 0.20,
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
                          Container(
                            height: getVerticalSize(
                              1.00,
                            ),
                            width: getHorizontalSize(
                              380.00,
                            ),
                            margin: getMargin(
                              top: 20,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray200,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 23,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  "Playlists",
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
                                Padding(
                                  padding: getPadding(
                                    bottom: 6,
                                  ),
                                  child: Text(
                                    "See All",
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
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 24,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  margin: getMargin(
                                    bottom: 25,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            28.00,
                                          ),
                                        ),
                                        child: CommonImageView(
                                          imagePath:
                                              ImageConstant.imgImage184X184,
                                          height: getSize(
                                            184.00,
                                          ),
                                          width: getSize(
                                            184.00,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 12,
                                        ),
                                        child: Text(
                                          "Ryan Jones - Pain",
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
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            28.00,
                                          ),
                                        ),
                                        child: CommonImageView(
                                          imagePath: ImageConstant.imgImage4,
                                          height: getSize(
                                            184.00,
                                          ),
                                          width: getSize(
                                            184.00,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: getHorizontalSize(
                                          184.00,
                                        ),
                                        margin: getMargin(
                                          top: 12,
                                        ),
                                        child: Text(
                                          "Ania Szarmach - Shades of Love",
                                          maxLines: null,
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
                                      ),
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
