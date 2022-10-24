import 'package:country_list_pick/country_list_pick.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/presentation/light_create_new_pin_screen/light_create_new_pin_screen.dart';
import 'package:hearme/widgets/custom_button.dart';
import 'package:hearme/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LightFillYourProfileBlankFormScreen extends StatefulWidget {
  bool isNewUser;
  LightFillYourProfileBlankFormScreen({this.isNewUser=true});
  @override
  State<LightFillYourProfileBlankFormScreen> createState() => _LightFillYourProfileBlankFormScreenState();
}

class _LightFillYourProfileBlankFormScreenState extends State<LightFillYourProfileBlankFormScreen> {
   String dialCode="+20";
   
   TextEditingController? _controller3;

  
   @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller3 = TextEditingController(text: DateTime(1990).toString());
  }
  
  
  
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    bool isRtl = context.locale==Constants.arLocal;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
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
                          child: CommonImageView(
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
                        Padding(
                          padding: getPadding(
                            left: 20,
                          ),
                          child: Text(
                           widget .isNewUser?"Edit Profile":
                            "Fill Your Profile",
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
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: getSize(
                        140.00,
                      ),
                      width: getSize(
                        140.00,
                      ),
                      margin: getMargin(
                        left: 24,
                        top: 33,
                        right: 24,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  70.00,
                                ),
                              ),
                              child: CommonImageView(
                                imagePath: ImageConstant.imgEllipse140X140,
                                height: getSize(
                                  140.00,
                                ),
                                width: getSize(
                                  140.00,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: getPadding(
                                left: 10,
                                top: 10,
                                right: 2,
                                bottom: 2,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgEdit,
                                height: getSize(
                                  29.00,
                                ),
                                width: getSize(
                                  29.00,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomTextFormField(
                    width: 380,
                    focusNode: FocusNode(),
                    hintText: "Full Name",
                    margin: getMargin(
                      left: 24,
                      top: 24,
                      right: 24,
                    ),
                    fontStyle: TextFormFieldFontStyle.UrbanistRegular14,
                    alignment: Alignment.center,
                  ),
                  CustomTextFormField(
                    width: 380,
                    focusNode: FocusNode(),
                    hintText: "Nickname",
                    margin: getMargin(
                      left: 24,
                      top: 24,
                      right: 24,
                    ),
                    fontStyle: TextFormFieldFontStyle.UrbanistRegular14,
                    alignment: Alignment.center,
                  ),
                 
                  Padding(
                    padding: getPadding(
                      
                      left: 24,
                      top: 24,
                      right: 24,
                    
                    ),
                    child: DateTimePicker(
                      
                type: DateTimePickerType.date,
               decoration:InputDecoration(
                 
                 
                                              hintText: "Date of Birth",
                                              
                                           suffixIcon:Container(
                        margin: getMargin(
                          left: 22,
                          top: 19,
                          right: 22,
                          bottom: 19,
                        ),
                        child: CommonImageView(
                          svgPath: ImageConstant.imgMobile,
                        ),
                      ),
                     
                     
                               
                               
                                  suffixIconConstraints: BoxConstraints(
                                    minWidth: getSize(
                                      20.00,
                                    ),
                                    minHeight: getSize(
                                      20.00,
                                    ),
                                  ),
                                  
                                             
                                              isDense: true,
                                              contentPadding: EdgeInsets.only(
                                    left: context.locale==Constants.engLocal? 
                                    getHorizontalSize(
                                                  16.00,
                                                ):getHorizontalSize(0),
                                                right: context.locale==Constants.arLocal? getHorizontalSize(
                                                  16.00,
                                                ):getHorizontalSize(0),
                                                top: getVerticalSize(
                                                  0.80,
                                                ),
                                                bottom: getVerticalSize(
                                                  0.80,
                                                ),
                                              ),
                                            ),
                dateMask: 'dd/MM/yyyy',
                style:  TextStyle(
                                            
                                            fontSize: getFontSize(
                                              14.0,
                                            ),
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                          ),
                 
                controller: _controller3,
                //initialValue: _initialValue,
                firstDate: DateTime(1940),
                      
                lastDate: DateTime.now(),
              
                                     
              
                
                onChanged: (val) => setState(() => val),
                validator: (val) {
                    setState(() => val ?? '');
                    return null;
                },
                onSaved: (val) => setState(() => val ?? ''),
              ),
                  ),
                  
                  
                    CustomTextFormField(
                    width: 380,
                    focusNode: FocusNode(),
                    hintText: "Email",
                    margin: getMargin(
                      left: 24,
                      top: 24,
                      right: 24,
                    ),
                      suffixConstraints: BoxConstraints(
                      minWidth: getHorizontalSize(
                        15.46,
                      ),
                      minHeight: getVerticalSize(
                        16.67,
                      ),
                    ),
                    suffix:  Padding(
                            padding: getPadding(
                              top: 19,
                              right: 22,
                              left: 22,

                              bottom: 19,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgArrowdown15X15,
                              height: getSize(
                                15.00,
                              ),
                              width: getSize(
                                15.00,
                              ),
                            ),
                          ),
                      
                    fontStyle: TextFormFieldFontStyle.UrbanistRegular14,
                    alignment: Alignment.center,
                  ),
              
                
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: getMargin(
                        left: 24,
                        top: 24,
                        right: 24,
                      ),
                      decoration: BoxDecoration(
                        color:isDark?ColorConstant.darkTextField: ColorConstant.gray50,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            16.00,
                          ),
                        ),
                      ),
                      child:Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CountryListPick(
                                      
                                      theme: CountryTheme(
                                        isShowFlag: true,
                                        isShowTitle: false,
                                        isShowCode: true,
                                        isDownIcon: false,
                                        showEnglishName: false,
                                        labelColor: Colors.black,
                                    
                                      ),
                                      initialSelection: dialCode,
                                      
                                      // or
                                      // initialSelection: 'US'
                                      onChanged: ( code) {
                                        setState(() {
                                          if(code!.dialCode!=null){
                                            dialCode=code.dialCode!;
                                          }
            
                                          else print("dialCode is null");
                                        });
                                      },
                                    ),
                                  
                                 
                                    Expanded(
                                      child: Container(
                                        width: getHorizontalSize(170),
                                        child: TextFormField(
                                          
                                          cursorColor: ColorConstant.gray500,
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                            hintText: 'Your Phone Number ',
                                            hintStyle: TextStyle(
                                            color: ColorConstant.gray500,
                                            fontSize: getFontSize(
                                              16.0,
                                            ),
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w400,
                                          ),
                                                      enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(
                                                  getHorizontalSize(
                                                    12.00,
                                                  ),
                                                ),
                                                borderSide: BorderSide.none
                                              ),
                                                                border:OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(
                                                      getHorizontalSize(
                                                        12.00,
                                                      ),
                                                    ),
                                                    borderSide: BorderSide.none
                                                  ), 
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(
                                                  getHorizontalSize(
                                                    12.00,
                                                  ),
                                                ),
                                                borderSide: BorderSide.none
                                              ),
                                           
                                           
                                            isDense: true,
                                            contentPadding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                8.00,
                                              ),
                                              right:getHorizontalSize(
                                                8.00,
                                              ),
                                              top: getVerticalSize(
                                                21.20,
                                              ),
                                              bottom: getVerticalSize(
                                                19.20,
                                              ),
                                            ),
                                          ),
                                          style: TextStyle(
                                            
                                            fontSize: getFontSize(
                                              16.0,
                                            ),
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                    
                    
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        top: 140,
                        right: 24,
                        bottom: 48,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CustomButton(
                            isDark: isDark,
                            onTap:(){
                              if(widget.isNewUser){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context)
                            =>LightCreateNewPinScreen()),
                              );

                              }
                              else
                              Navigator.pop(context);
                           
                            } ,
                            width: 184,
                            text: "Skip",
                            variant: ButtonVariant.FillGreen50,
                            shape: ButtonShape.CircleBorder29,
                            padding: ButtonPadding.PaddingAll18,
                            fontStyle:
                                ButtonFontStyle.UrbanistRomanBold16GreenA700,
                          ),
                          CustomButton(
                             onTap:(){
                                if(widget.isNewUser){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context)
                            =>LightCreateNewPinScreen()),
                              );

                              }
                              else
                              Navigator.pop(context);
                            } ,
                            width: 184,
                            text: "Continue",
                            margin: getMargin(
                              left: 12,
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
