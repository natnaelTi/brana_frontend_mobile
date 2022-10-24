import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

// ignore_for_file: must_be_immutable
class CustomCheckbox extends StatefulWidget {
  CustomCheckbox(
      {this.shape,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.padding,
      this.iconSize,
      this.value,
      this.onChange,
      this.text});

  CheckboxShape? shape;

  CheckboxVariant? variant;

  CheckboxFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? padding;

  double? iconSize;

  bool? value;

  Function(bool)? onChange;

  String? text;

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  @override
  Widget build(BuildContext context) {
    return widget.alignment != null
        ? Align(
            alignment: widget.alignment ?? Alignment.center,
            child: _buildCheckboxWidget(),
          )
        : _buildCheckboxWidget();
  }

  _buildCheckboxWidget() {
    return Padding(
      padding: widget.padding ?? EdgeInsets.zero,
      child: InkWell(
        onTap: () {
          widget.value = !(widget.value!);
          widget.onChange!(widget.value!);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: getHorizontalSize(widget.iconSize ?? 0),
              width: getHorizontalSize(widget.iconSize ?? 0),
              child: Checkbox(
                side: BorderSide(
            color: ColorConstant.greenA700,
            width: 2,
          ),
                activeColor: ColorConstant.greenA700,
                shape: _setShape(),
                value: widget.value ?? false,
                onChanged: (value) {
                  widget.onChange!(value!);
                  setState(() {
                    
                  });
                },
              ),
            ),
            Padding(
              padding: getPadding(
                left: 10,
                right: 10
              ),
              child: Text(
                widget.text ?? "",
                textAlign: TextAlign.center,
                style: _setFontStyle(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _setOutlineBorderRadius() {
    switch (widget.shape) {
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            5.00,
          ),
        );
    }
  }

  _setShape() {
    switch (widget.variant) {
      default:
        return RoundedRectangleBorder(
          side: BorderSide(
            color: ColorConstant.greenA700,
            width: 3,
          ),
          borderRadius: _setOutlineBorderRadius(),
        );
    }
  }

  _setFontStyle() {
    switch (widget.fontStyle) {
      default:
        return TextStyle(
         
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
    }
  }
}

enum CheckboxShape { RoundedBorder8 }
enum CheckboxVariant { OutlineGreenA700 }
enum CheckboxFontStyle { UrbanistSemiBold14 }
