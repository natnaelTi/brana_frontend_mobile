import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/presentation/light_walkthrough_screen/light_walkthrough_screen.dart';
import 'package:hearme/widgets/custom_icon_button.dart';

class LightSplashScreen extends StatefulWidget {
  @override
  State<LightSplashScreen> createState() => _LightSplashScreenState();
}

class _LightSplashScreenState extends State<LightSplashScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_)=>LightWalkthroughScreen()));
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 89,
                      top: 359,
                      right: 89,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomIconButton(
                          height: 60,
                          width: 60,
                          variant: IconButtonVariant.GradientGreenA700GreenA400,
                          shape: IconButtonShape.CircleBorder30,
                          padding: IconButtonPadding.PaddingAll13,
                          child: CommonImageView(
                            svgPath: ImageConstant.imgTypelogocircl,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 16,
                            top: 1,
                            bottom: 1,
                          ),
                          child: Text(
                            "Hearme",
                            overflow: TextOverflow.ellipsis,
                            textAlign:   TextAlign.start,
                            style: TextStyle(
                                 
                              fontSize: getFontSize(
                                48,
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
                      left: 89,
                      top: 240,
                      right: 89,
                      bottom: 20,
                    ),
                    child: SpinKitCircle(
  color: ColorConstant.greenA700,
  size: 60.0,
)
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
