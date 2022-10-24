import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

// ignore_for_file: must_be_immutable
class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.height,
      this.width,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? height;

  double? width;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        constraints: BoxConstraints(
          minHeight: getSize(height ?? 0),
          minWidth: getSize(width ?? 0),
        ),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      borderRadius: _setBorderRadius(),
      gradient: _setGradient(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll7:
        return getPadding(
          all: 7,
        );
      case IconButtonPadding.PaddingAll13:
        return getPadding(
          all: 13,
        );
      default:
        return getPadding(
          all: 28,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillGreenA70014:
        return ColorConstant.greenA70014;
      case IconButtonVariant.OutlineGreenA7003f:
      case IconButtonVariant.GradientGreenA700GreenA400:
        return null;
      default:
        return ColorConstant.greenA700;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.RoundedBorder8:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
      case IconButtonShape.CircleBorder30:
        return BorderRadius.circular(
          getHorizontalSize(
            30.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            40.00,
          ),
        );
    }
  }

  _setGradient() {
    switch (variant) {
      case IconButtonVariant.OutlineGreenA7003f:
        return LinearGradient(
          begin: Alignment(
            1.0000000298023233,
            1.0000000298023233,
          ),
          end: Alignment(
            1.1102230246251565e-16,
            0,
          ),
          colors: [
            ColorConstant.greenA700,
            ColorConstant.greenA400,
          ],
        );
      case IconButtonVariant.GradientGreenA700GreenA400:
        return LinearGradient(
          begin: Alignment(
            1.0000000298023233,
            1.0000000298023233,
          ),
          end: Alignment(
            1.1102230246251565e-16,
            0,
          ),
          colors: [
            ColorConstant.greenA700,
            ColorConstant.greenA400,
          ],
        );
      case IconButtonVariant.FillGreenA700:
      case IconButtonVariant.FillGreenA70014:
        return null;
      default:
        return null;
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case IconButtonVariant.OutlineGreenA7003f:
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
      case IconButtonVariant.FillGreenA700:
      case IconButtonVariant.FillGreenA70014:
      case IconButtonVariant.GradientGreenA700GreenA400:
        return null;
      default:
        return null;
    }
  }
}

enum IconButtonShape {
  RoundedBorder8,
  CircleBorder40,
  CircleBorder30,
}
enum IconButtonPadding {
  PaddingAll7,
  PaddingAll28,
  PaddingAll13,
}
enum IconButtonVariant {
  FillGreenA700,
  OutlineGreenA7003f,
  FillGreenA70014,
  GradientGreenA700GreenA400,
}
