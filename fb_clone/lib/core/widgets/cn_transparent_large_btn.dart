import 'package:fb_clone/core/constants/app_colors.dart';
import 'package:fb_clone/core/utils/app_text_style_utils.dart';
import 'package:flutter/material.dart';

class CNTransparentLargeBtn extends StatelessWidget {
  const CNTransparentLargeBtn({
    super.key,
    required this.onPressed,
    this.fillColor,
    this.boxHeight,
    this.boxWidth,
    this.paddingTop,
    this.paddingBottom,
    this.paddingLeft,
    this.paddingRight,
  });

  final VoidCallback onPressed;
  final Color? fillColor;
  final double? boxHeight;
  final double? boxWidth;

  final double? paddingTop;
  final double? paddingBottom;
  final double? paddingLeft;
  final double? paddingRight;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
        top: paddingTop ?? screenHeight * 0,
        bottom: paddingBottom ?? screenHeight * 0,
        left: paddingLeft ?? screenWidth * 0,
        right: paddingRight ?? screenWidth * 0,
      ),
      child: SizedBox(
        width: boxWidth ?? double.infinity,
        height: boxHeight ?? screenHeight * 0.08,
        child: RawMaterialButton(
          elevation: 0.0,
          onPressed: onPressed,
          fillColor: fillColor ?? Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: BorderSide(
              color: kAppBlue,
            ),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.03,
            vertical: screenHeight * 0.02,
          ),
          child: Text(
            'Create account',
            style: ResponsiveTextStyle.uRalewayTxtStyle(
              context,
              0.02,
              kAppWhite,
              FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
