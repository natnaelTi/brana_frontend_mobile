import 'package:flutter/material.dart';

import '../utils/color_constant.dart';
import '../utils/math_utils.dart';

ThemeData lightTheme = ThemeData(
 
  dialogTheme: DialogTheme(
     shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getHorizontalSize(20))
      ),
      backgroundColor: Colors.white
  ),
  
  scaffoldBackgroundColor:ColorConstant.whiteA700,

  bottomNavigationBarTheme: 
  BottomNavigationBarThemeData(backgroundColor: ColorConstant.whiteA700),

appBarTheme: AppBarTheme(
  backgroundColor: ColorConstant.whiteA700,
  foregroundColor: Colors.black),
  
  brightness: Brightness.light,
backgroundColor:ColorConstant.whiteA700,


inputDecorationTheme: InputDecorationTheme(
      alignLabelWithHint: true,
                                        
    hintStyle: TextStyle(
                                        fontSize: getFontSize(
                                          12.0,
                                        ),
                                        color: ColorConstant.gray500,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            16.00,
                                          ),
                                        ),
                                        borderSide: BorderSide.none
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            16.00,
                                          ),
                                        ),
                                        borderSide:BorderSide(color: ColorConstant.greenA700)
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            20.00,
                                          ),
                                        ),
                                        borderSide: BorderSide.none
                                      ),
                                      filled: true,
                                      fillColor: ColorConstant.gray50,
  isDense: true,

  contentPadding: EdgeInsets.only(
    left: getHorizontalSize(
      14.00,
    ),
    right: getHorizontalSize(
      14.00,
    ),
    top: getVerticalSize(
      50.11,
    ),
    bottom: getVerticalSize(
      0.12,
    ),
  ),
                                      ),



);
                                     
                                     
// Widget lightCostumContainer({required Widget child, EdgeInsetsGeometry
//  padding= const EdgeInsets.symmetric(horizontal:1) ,} ){
//   return  Container(
//     padding: padding,

//       margin: EdgeInsets.only(
//         top: getVerticalSize(
//           8.00,
//         ),
//         bottom: getVerticalSize(
//           8.00,
//         ),
//       ),
//       decoration: BoxDecoration(
//           color: ColorConstant.whiteA700,
//           borderRadius: BorderRadius.circular(
//             getHorizontalSize(
//               20.00,
//             ),
//           ),
//           boxShadow: [
//             BoxShadow(
//               color: ColorConstant.black900,
//               spreadRadius: getHorizontalSize(
//                 2.00,
//               ),
//               blurRadius: getHorizontalSize(
//                 2.00,
//               ),
//               offset: Offset(
//                 0,
//                 4,
//               ),
//             ),
//           ],
//         ),
//       child: child
    
//     );



// }

// Widget lightCustomButton({required String text , required double width,
//  required double height , }){
//   return Container(
//                     alignment: Alignment.center,
//                     height: height,
//                     width: width,
//                     decoration: BoxDecoration(
//                       color: ColorConstant.whiteA700,
//                       border: Border.all(color: ColorConstant.deepPurple600),
//                       borderRadius: BorderRadius.circular(
//                         getHorizontalSize(
//                           100.00,
//                         ),
//                       ),
//                     ),
//                     child: Text(
//                       text,
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: ColorConstant.deepPurple600,
//                         fontSize: getFontSize(
//                           16,
//                         ),
//                         fontFamily: 'Sofia Pro',
//                         fontWeight: FontWeight.w700,
//                         letterSpacing: 0.20,
//                       ),
//                     ),
                 
// );

// }



ThemeData darkTheme = ThemeData(
  primaryColor: ColorConstant.darkBg,
   dialogTheme: DialogTheme(
     shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getHorizontalSize(20))
      ),
      backgroundColor: ColorConstant.darkBg
  ),
  scaffoldBackgroundColor: ColorConstant.darkBg,
appBarTheme: AppBarTheme(
  backgroundColor: ColorConstant.darkBg,
  foregroundColor: Colors.white),
bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: ColorConstant.darkBg),
  brightness: Brightness.dark,
  inputDecorationTheme: InputDecorationTheme(

    
     filled: false,
   fillColor: ColorConstant.darkTextField,
    hintStyle: TextStyle(
                                        fontSize: getFontSize(
                                          12.0,
                                        ),
                                        color: ColorConstant.gray500,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            20.00,
                                          ),
                                        ),
                                        borderSide: BorderSide(
                                          color: ColorConstant.darkTextField,
                                          width: 1,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            20.00,
                                          ),
                                        ),
                                        borderSide: BorderSide(
                                          color: ColorConstant.greenA700,
                                          width: 1,
                                        ),
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            20.00,
                                          ),
                                        ),
                                        borderSide: BorderSide.none,
                                      ),
                                     
    
            contentPadding: EdgeInsets.only(
              left: getHorizontalSize(
                14.00,
              ),
                right: getHorizontalSize(
                14.00,
              ),
              top: getVerticalSize(
                50.11,
              ),
              bottom: getVerticalSize(
                0.12,
              ),
            ),
),

 bottomSheetTheme: BottomSheetThemeData(
backgroundColor: ColorConstant.darkBg,
shape:  RoundedRectangleBorder(
           
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            )
        ),
        

 ),
 
);

// Widget darkCustomContainer({required Widget child, EdgeInsetsGeometry
//  padding= const EdgeInsets.symmetric(horizontal:1) }){
//   return  Container(
//     padding: padding,
//      margin: EdgeInsets.only(
       
//         bottom: getVerticalSize(
//           8
//         ),
//       ),
//       decoration: BoxDecoration(
//         color: ColorConstant.darkButton,
//         borderRadius: BorderRadius.circular(
//           getHorizontalSize(
//             20.00,
//           ),
//         ),
      
     
//       ),
      
      
//       child: child
    
//     );
//  }

// }


// Widget darkCustomButton({required String text , required double width,
//  required double height , }){
//   return Container(
//                     alignment: Alignment.center,
//                     height: height,
//                     width: width,
//                     decoration: BoxDecoration(
//                       color: ColorConstant.darkButton,
//                       borderRadius: BorderRadius.circular(
//                         getHorizontalSize(
//                           100.00,
//                         ),
//                       ),
//                     ),
//                     child:Text(
//                       text,
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                                     color: ColorConstant.whiteA700,
//                                     fontSize: getFontSize(
//                                       15,
//                                     ),
//                                     fontFamily: 'Sofia Pro',
//                                     fontWeight: FontWeight.w600,
//                                     letterSpacing: 1.20,
//                                   ),
//                     ),
                 
                 
//                   );
                

// }