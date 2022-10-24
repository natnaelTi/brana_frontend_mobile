import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/presentation/light_search_results_podcasts1_screen/light_search_results_podcasts1_screen.dart';
import 'package:hearme/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class LightSearchTypeKeywordScreen extends StatelessWidget {
  // TextEditingController stateActiveSeController = TextEditingController();
   TextEditingController stateFilledSeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
bool isRtl = context.locale==Constants.arLocal;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
      
            Padding(
                    padding: getPadding(
                      left: 24,
                      right: 24,
                      top: 24
                    ),
                    child: Row(
                      children: [
                        CommonImageViewWithDarkOption(
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
                      SizedBox(width: getHorizontalSize(24),),
                    
                        Expanded(
                          child: CustomSearchView(
                            isDark: isDark,
                            width: 380,
                            focusNode: FocusNode(),
                            controller: stateFilledSeController,
                            hintText: "Jordan Harbinger",
                            margin: getMargin(
                              left: 0,
                              right: 0,
                            ),
                            alignment: Alignment.center,
                            prefix: Container(
                              margin: getMargin(
                                left: 22,
                                top: 20,
                                right: 14,
                                bottom: 19,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgSearchGray400,
                              ),
                            ),
                            prefixConstraints: BoxConstraints(
                              minWidth: getSize(
                                16.02,
                              ),
                              minHeight: getSize(
                                16.02,
                              ),
                            ),
                            suffix: Padding(
                              padding: EdgeInsets.only(
                                right: getHorizontalSize(
                                  15.00,
                                ),
                              ),
                              child: IconButton(
                                onPressed: (){
                                  // Navigator.pop(context);
                                  stateFilledSeController.clear();
                                },
                                icon: Icon(
                                  Icons.clear,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                            ),
                            suffixConstraints: BoxConstraints(
                              minWidth: getHorizontalSize(
                                10.83,
                              ),
                              minHeight: getVerticalSize(
                                10.83,
                              ),
                            ),
                          ),
                        ),
                      ],
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
                  Text(
                    "Recent Searches",
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
                      bottom: 2,
                    ),
                    child: Text(
                      "Clear All",
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
              // decoration: BoxDecoration(
              //   color: ColorConstant.gray200,
              // ),
            ),
          Expanded(
            child: Container(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                
                itemBuilder: (context,index){

                return   Padding(
                    padding: getPadding(
                      left: 24,
                      top: 23,
                      right: 24,
                    ),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)
                          =>LightSearchResultsPodcasts1Screen()),
                            );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "Ariana Grande",
                            overflow: TextOverflow.ellipsis,
                            textAlign:   TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray600,
                              fontSize: getFontSize(
                                18,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.20,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 0,
                              top: 6,
                              bottom: 5,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgClose,
                              height: getSize(
                                13.00,
                              ),
                              width: getSize(
                                13.00,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                
               
              }),
              
            ),
          )
         
          ],
        ),
      ),
    );
  }
}
