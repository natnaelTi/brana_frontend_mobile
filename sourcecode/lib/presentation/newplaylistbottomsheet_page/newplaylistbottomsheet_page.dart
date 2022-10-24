import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/widgets/custom_button.dart';
import 'package:hearme/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class NewplaylistbottomsheetPage extends StatefulWidget {
  @override
  State<NewplaylistbottomsheetPage> createState() => _NewplaylistbottomsheetPageState();
}

class _NewplaylistbottomsheetPageState extends State<NewplaylistbottomsheetPage> {
  Object? value2;
 List<String> dropdownItemList2 = ["Public", "  Private",];
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: getVerticalSize(
              3.00,
            ),
            width: getHorizontalSize(
              38.00,
            ),
            margin: getMargin(
              left: 24,
              top: 8,
              right: 24,
            ),
          
          ),
          Padding(
            padding: getPadding(
              left: 24,
              top: 24,
              right: 24,
            ),
            child: Text(
              "New Playlist",
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
          CustomTextFormField(
            width: 380,
            
            focusNode: FocusNode(),
            hintText: "Most Popular Songs",
            margin: getMargin(
              left: 24,
              top: 23,
              right: 24,
            ),
            padding: TextFormFieldPadding.Padding28
          ),
          CustomTextFormField(
            width: 380,
            focusNode: FocusNode(),
            hintText: "Most Popular Songs Latest Releases and Updates",
            margin: getMargin(
              left: 24,
              top: 24,
              right: 24,
            ),
          ),
         
          Padding(
            padding: getPadding(
              top: 10,
              left: 24,
              right: 24
            ),
            child: Container(
              height: getVerticalSize(60),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color:isDark?ColorConstant.darkTextField: ColorConstant.gray100,
              
              ),
              padding: getPadding(
                top: 20,
                left: 16,
                right: 16
              ),
              child: DropdownButtonHideUnderline(
                                                                        child: DropdownButton(
                                                                          autofocus: true,
                                                                          value: value2,
                                                                          isExpanded: true,
                                                                         icon:  Container(
                                                                      height: getSize(
                                                                        8.33,
                                                                      ),
                                                                      width: getSize(
                                                                        10.00,
                                                                      ),
                                                                      child:SvgPicture.asset(
                                                                        ImageConstant.imgVector,
                                                                        fit: BoxFit.fill,
                                                                        color:isDark?
                                                                         Colors.white:Colors.black,
                                                                      ),
                                                                    ),
                                    
                                             
                                                                          hint: Text(
                                                                            'Privacy',
                                                                            textAlign: TextAlign.start,
                                                                            style: TextStyle(
                                                                              color:isDark?Colors.white: ColorConstant.gray800,
                                                                              fontSize: getFontSize(
                                                                                14,
                                                                              ),
                                                                              fontFamily: 'Urbanist',
                                                                              fontWeight: FontWeight.w400,
                                                                              height: 1.00,
                                                                            ),
                                                                          ),
                                                                          onChanged: (value) {
                                                                            setState(() {
                                                                              this.value2=value;
                                                                            });
                                                                          },
                                                                          items: dropdownItemList2
                                                                              .map<DropdownMenuItem<String>>((String value) {
                                                                            return DropdownMenuItem<String>(
                                                                              value: value,
                                                                              child: Text(
                                                                                value,
                                                                                textAlign: TextAlign.start,
                                                                              ),
                                                                            );
                                                                          }).toList(),
                                                                          selectedItemBuilder: (BuildContext context) {
                                                                            return dropdownItemList2.map((String value) {
                                                                              return Text(
                                                                                value,
                                                                                textAlign: TextAlign.start,
                                                                                style: TextStyle(
                                                                                  color:isDark?Colors.white:
                                                                                   Colors.black,
                                                                                  fontSize: getFontSize(
                                                                                         14,
                                                                                  ),
                                                                                  fontFamily: 'Urbanist',
                                                                                  fontWeight: FontWeight.w600,
                                                                                  height: 1.00,
                                                                                ),
                                                                              );
                                                                            }).toList();
                                                                          },
                                                                        ),
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
              bottom: 36,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomButton(
                  width: 184,
                  text: "Cancel",
                  variant: ButtonVariant.FillGreen50,
                  shape: ButtonShape.CircleBorder29,
                  padding: ButtonPadding.PaddingAll18,
                  fontStyle: ButtonFontStyle.UrbanistRomanBold16GreenA700,
                  onTap: onTapBtnCancel,
                ),
                CustomButton(
                  width: 184,
                  text: "Create",
                  margin: getMargin(
                    left: 12,
                  ),
                  onTap: (){
                    Navigator.pop(context);
                  },
                  variant: ButtonVariant.OutlineGreenA7003f,
                  shape: ButtonShape.CircleBorder29,
                  padding: ButtonPadding.PaddingAll18,
                  fontStyle: ButtonFontStyle.UrbanistRomanBold16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onTapBtnCancel() {
    Navigator.pop(context);
  }
}
