import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

// ignore_for_file: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.isDark=false,
      this.alignment,
      this.onTap,
      this.width,
      this.margin,
      this.text});

  ButtonShape? shape;
  bool isDark;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  VoidCallback? onTap;

  double? width;

  EdgeInsetsGeometry? margin;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: getHorizontalSize(width ?? 0),
        margin: margin,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: Text(
          text ?? "",
          textAlign: TextAlign.center,
          style: _setFontStyle(),
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll10:
        return getPadding(
          all: 10,
        );
      case ButtonPadding.PaddingAll18:
        return getPadding(
          all: 18,
        );
      case ButtonPadding.PaddingAll13:
        return getPadding(
          all: 13,
        );
      default:
        return getPadding(
          all: 6,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineGreenA7003f:
        return ColorConstant.greenA700;
      case ButtonVariant.FillGreen50:
        return isDark?ColorConstant.darkButton: ColorConstant.green50;
      case ButtonVariant.FillGreen700:
        return ColorConstant.green700;
      case ButtonVariant.FillGray50:
        return ColorConstant.gray50;
      case ButtonVariant.OutlineGreenA7001_2:
        return ColorConstant.greenA70014;
      case ButtonVariant.OutlineGreenA700:
        return null;
      default:
        return ColorConstant.greenA700;
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.OutlineGreenA700:
        return Border.all(
          color: ColorConstant.greenA700,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case ButtonVariant.OutlineGreenA7001_2:
        return Border.all(
          color: ColorConstant.greenA700,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.FillGreenA700:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.OutlineGreenA7003f:
      case ButtonVariant.FillGreen50:
      case ButtonVariant.FillGreen700:
      case ButtonVariant.FillGray50:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder22:
        return BorderRadius.circular(
          getHorizontalSize(
            22.50,
          ),
        );
      case ButtonShape.CircleBorder29:
        return BorderRadius.circular(
          getHorizontalSize(
            29.00,
          ),
        );
      case ButtonShape.RoundedBorder12:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case ButtonVariant.OutlineGreenA7003f:
        return [
          BoxShadow(
            color: ColorConstant.greenA7003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              10.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          )
        ];
      case ButtonVariant.FillGreenA700:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.FillGreen50:
      case ButtonVariant.OutlineGreenA700:
      case ButtonVariant.FillGreen700:
      case ButtonVariant.FillGray50:
      case ButtonVariant.OutlineGreenA7001_2:
        return null;
      default:
        return null;
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.UrbanistRomanBold18:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.UrbanistSemiBold14:
        return TextStyle(
          color: ColorConstant.greenA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.UrbanistRomanBold16:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.UrbanistRomanBold16GreenA700:
        return TextStyle(
          color: ColorConstant.greenA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.SFProDisplayMedium24:
        return TextStyle(
             
          fontSize: getFontSize(
            24,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.UrbanistRomanBold24:
        return TextStyle(
             
          fontSize: getFontSize(
            24,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
    }
  }
}

enum ButtonShape {
  Square,
  CircleBorder16,
  RoundedBorder22,
  CircleBorder29,
  RoundedBorder12,
}
enum ButtonPadding {
  PaddingAll6,
  PaddingAll10,
  PaddingAll18,
  PaddingAll13,
}
enum ButtonVariant {
  FillGreenA700,
  FillWhiteA700,
  OutlineGreenA7003f,
  FillGreen50,
  OutlineGreenA700,
  FillGreen700,
  FillGray50,
  OutlineGreenA7001_2,
}
enum ButtonFontStyle {
  UrbanistSemiBold14WhiteA700,
  UrbanistRomanBold18,
  UrbanistSemiBold14,
  UrbanistRomanBold16,
  UrbanistRomanBold16GreenA700,
  SFProDisplayMedium24,
  UrbanistRomanBold24,
}
