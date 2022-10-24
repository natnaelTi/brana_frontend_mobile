import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

class LightSettingsLanguageScreen extends StatefulWidget {
  @override
  State<LightSettingsLanguageScreen> createState() => _LightSettingsLanguageScreenState();
}

class _LightSettingsLanguageScreenState extends State<LightSettingsLanguageScreen> {
 

  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
bool isRtl = context.locale==Constants.arLocal;
 int radioGroup=isRtl?1:0;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Container(
                  width: size.width,
                  margin: getMargin(
                    left: 28,
                    top: 33,
                    right: 28,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                          right:20
                        ),
                        child: Text(
                          "Language",
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
                    left: 24,
                    top: 33,
                    right: 24,
                  ),
                  child: Text(
                    "Suggested",
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
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 40,
                      right: 24,
                    ),
                    child: InkWell(
                      onTap: ()async{
                        setState(()async {
                           radioGroup =0 ;
                                                                await context
                                                                    .setLocale(
                                                                        Locale("en"));
                          
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "English (US)",
                            overflow: TextOverflow.ellipsis,
                            textAlign:   TextAlign.start,
                            style: TextStyle(
                                 
                              fontSize: getFontSize(
                                18,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.20,
                            ),
                          ),
                          
                      Theme(
                                      data: Theme.of(context).copyWith(
                              unselectedWidgetColor: ColorConstant.greenA700,
                              // disabledColor: Colors.blue
                              ),
                                      child: Radio(
                                                  value: 0,
                                                  activeColor: ColorConstant.greenA700,
                                                  groupValue: radioGroup,
                                                  onChanged: (value)async {
                                                     setState(()async {
                           radioGroup =0 ;
                                                                await context
                                                                    .setLocale(
                                                                        Locale("en"));
                        });
                                                  },
                                                ),
                                  ),
                      
                        ],
                      ),
                    ),
                  ),
                ),
                
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 40,
                      right: 24,
                    ),
                    child: InkWell(
                       onTap: ()async{
                      setState(()async {
                         radioGroup =1 ;
                                                              await context
                                                                  .setLocale(
                                                                      Locale("ar"));
                      });
                    },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "العربية",
                            overflow: TextOverflow.ellipsis,
                            textAlign:   TextAlign.start,
                            style: TextStyle(
                                 
                              fontSize: getFontSize(
                                18,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.20,
                            ),
                          ),
                          
                      Theme(
                                      data: Theme.of(context).copyWith(
                            unselectedWidgetColor: ColorConstant.greenA700,
                            // disabledColor: Colors.blue
                            ),
                                      child: Radio(
                                                  value: 1,
                                                  activeColor: ColorConstant.greenA700,
                                                  groupValue: radioGroup,
                                                  onChanged: (value) {
                                                    setState(()async {
                                                     radioGroup =
                                                                    value as int;
                                                                await context
                                                                    .setLocale(
                                                                        Locale("ar"));
                                                      
                                                    });
                                                  },
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
        ),
      ),
    );
  }
}
