import 'package:fb_clone/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CNTransparentTextField extends StatelessWidget {
  const CNTransparentTextField({
    super.key,
    this.leftPaddingSize,
    this.rightPaddingSize,
    this.topPaddingSize,
    this.bottomPaddingSize,
    this.textStyle,
    this.hintText,
    this.focusColor,
    this.enableColor,
    this.leadingIcon,
    this.focusWidth,
  });

  final double? leftPaddingSize;
  final double? rightPaddingSize;
  final double? topPaddingSize;
  final double? bottomPaddingSize;
  final TextStyle? textStyle;
  final String? hintText;
  final Color? focusColor;
  final Color? enableColor;
  final IconData? leadingIcon;
  final double? focusWidth;

  @override
  Widget build(BuildContext context) {
    double screenWdith = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only(
        left: leftPaddingSize ?? 0.05,
        right: rightPaddingSize ?? 0.05,
        bottom: bottomPaddingSize ?? 0.04,
        top: topPaddingSize ?? 0.04,
      ),
      child: TextField(
        style: textStyle,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: textStyle,
          contentPadding: EdgeInsets.symmetric(
            horizontal: screenWdith * 0.05,
            vertical: screenHeight * 0.02,
          ),
          prefixIcon: Icon(
            leadingIcon,
            size: screenHeight * 0.03,
            color: kAppWhite,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(20.0),
            ),
            borderSide: BorderSide(
              color: focusColor ?? kAppWhite,
              width: focusWidth ?? 4.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(20.0),
            ),
            borderSide: BorderSide(
              color: enableColor ?? kAppWhite,
              width: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}
