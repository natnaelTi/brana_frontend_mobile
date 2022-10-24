import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/presentation/home.dart';

// ignore_for_file: must_be_immutable
class ResetpasswordsuccessfuldialogPage extends StatefulWidget {
  @override
  State<ResetpasswordsuccessfuldialogPage> createState() =>
      _ResetpasswordsuccessfuldialogPageState();
}

class _ResetpasswordsuccessfuldialogPageState
    extends State<ResetpasswordsuccessfuldialogPage> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => Home()),
          (Route<dynamic> route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        margin: EdgeInsets.only(
          left: getHorizontalSize(
            10.00,
          ),
          top: getVerticalSize(
            20.00,
          ),
          right: getHorizontalSize(
            10.00,
          ),
          bottom: getVerticalSize(
            20.00,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    10.00,
                  ),
                  right: getHorizontalSize(
                    10.00,
                  ),
                ),
                child: Image.asset(
                  ImageConstant.resetPasswordDialog,
                  width: getHorizontalSize(185),
                  height: getVerticalSize(180),
                )),
            Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  10.00,
                ),
                top: getVerticalSize(
                  32.00,
                ),
                right: getHorizontalSize(
                  10.00,
                ),
              ),
              child: Text(
                "Congratulations!",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorConstant.greenA700,
                  fontSize: getFontSize(
                    24,
                  ),
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              width: getHorizontalSize(
                276.00,
              ),
              margin: EdgeInsets.only(
                left: getHorizontalSize(
                  10.00,
                ),
                top: getVerticalSize(
                  16.20,
                ),
                right: getHorizontalSize(
                  10.00,
                ),
              ),
              child: Text(
                "Your account is ready to use. You will be redirected to the Home page in a few seconds..",
                maxLines: null,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: getFontSize(
                    16,
                  ),
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.20,
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    10.00,
                  ),
                  top: getVerticalSize(
                    32.00,
                  ),
                  right: getHorizontalSize(
                    10.00,
                  ),
                  bottom: getVerticalSize(
                    20.00,
                  ),
                ),
                child: SpinKitCircle(
                  color: ColorConstant.greenA700,
                  size: 50.0,
                )),
          ],
        ),
      ),
    );
  }
}
