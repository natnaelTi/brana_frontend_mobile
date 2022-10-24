import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

// ignore_for_file: must_be_immutable
class CustomTextFormField extends StatelessWidget {
 

  CustomTextFormField(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.hintText,
      this.textInputType=TextInputType.text,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator});

  TextFormFieldShape? shape;
  TextInputType textInputType;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;
 var onTap;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? isObscureText;

  TextInputAction? textInputAction;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget( isDark),
          )
        : _buildTextFormFieldWidget( isDark);
  }

  _buildTextFormFieldWidget(bool isDark) {
    return Container(
      width: getHorizontalSize(width ?? 0),
      margin: margin,
      child: TextFormField(
        keyboardType:textInputType,
        
        controller: controller,
        focusNode: focusNode,
        style: TextStyle(
          //    
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        ),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        decoration: _buildDecoration(isDark),
        validator: validator,
      ),
    );
  }

  _buildDecoration(bool isDark) {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(isDark),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(focus:true),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(isDark ),
      focusColor: ColorConstant.greenA700.withOpacity(0.08),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }



  _setFontStyle(bool isDark) {
    
    switch (fontStyle) {
      case TextFormFieldFontStyle.UrbanistSemiBold18:
        return TextStyle(
          color: ColorConstant.gray500,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
      case TextFormFieldFontStyle.UrbanistRegular14:
        return TextStyle(
          color: ColorConstant.gray500,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          //    
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
    }
  }




  _setOutlineBorderRadius() {
    switch (shape) {
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
    }
  }

  _setBorderStyle({bool focus=false} ) {
    switch (variant) {
      case TextFormFieldVariant.UnderLineGray200:
        return UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstant.gray200,
          ),
        );
      case TextFormFieldVariant.FillGray902:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide:focus?BorderSide(color: ColorConstant.greenA700): BorderSide.none,
        );
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide:focus?BorderSide(color: ColorConstant.greenA700): BorderSide.none,
        );
    }
  }

  _setFillColor(bool isDark) {
    switch (isDark) {
      case true :
        return ColorConstant.gray902;
      default:
        return ColorConstant.gray100;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.UnderLineGray200:
        return false;
      case TextFormFieldVariant.FillGray902:
        return true;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingB14:
        return getPadding(
          bottom: 14,
        );
      case TextFormFieldPadding.Padding28:
      return getPadding(
        left: 18,
        right: 18,
        bottom: 20,
        top: 20
      ) ;
      default:
        return getPadding(
          all: 18,
        );
    }
  }
  
  
}

enum TextFormFieldShape {
  RoundedBorder16,
}
enum TextFormFieldPadding {
  PaddingAll18,
  PaddingB14,
  Padding28
}
enum TextFormFieldVariant {
  FillGray50,
  UnderLineGray200,
  FillGray902,
}
enum TextFormFieldFontStyle {
  UrbanistSemiBold14,
  UrbanistSemiBold18,
  UrbanistRegular14,
}
