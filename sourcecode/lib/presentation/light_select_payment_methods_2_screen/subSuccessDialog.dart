import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/presentation/home.dart';
import 'package:hearme/widgets/custom_button.dart';

class SubSuccessfulDialog extends StatelessWidget {
  const SubSuccessfulDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            50.00,
          ),
        ),
      ),
      child: Container(
        padding: getPadding(all: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: getVerticalSize(24),
            ),
            Image.asset(
              ImageConstant.subSuccessful,
              width: getHorizontalSize(185),
              height: getVerticalSize(180),
            ),
            Padding(
              padding: getPadding(top: 32),
              child: Text(
                "Congratulations",
                style: TextStyle(
                  color: ColorConstant.greenA700,
                  fontFamily: "Urbanist",
                  fontSize: getFontSize(24),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: getPadding(top: 16, bottom: 32),
              child: Text(
                "You have successfully subscribed 1 month premium. Enjoy the benefits!",
                maxLines: null,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Urbanist",
                  fontSize: getFontSize(16),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            CustomButton(
              width: size.width,
              text: "Ok",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              margin: getMargin(
                left: 0,
                top: 0,
                right: 0,
                bottom: 20,
              ),
              variant: ButtonVariant.OutlineGreenA7003f,
              shape: ButtonShape.CircleBorder29,
              padding: ButtonPadding.PaddingAll18,
              fontStyle: ButtonFontStyle.UrbanistRomanBold16,
            ),
          ],
        ),
      ),
    );
  }
}
