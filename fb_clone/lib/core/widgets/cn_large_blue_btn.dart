import 'package:fb_clone/core/constants/app_colors.dart';
import 'package:fb_clone/core/utils/app_text_style_utils.dart';
import 'package:flutter/material.dart';

class CNLargeBlueButton extends StatelessWidget {
  const CNLargeBlueButton({
    super.key,
    this.paddingTop,
    this.paddingBottom,
    this.paddingLeft,
    this.paddingRight,
    this.buttonWidth,
    this.buttonHeight,
    this.executeFunction,
    this.verticalContentPadding,
    this.horizontalContentPadding,
    required this.buttonLabel,
  });

  final double? paddingTop;
  final double? paddingBottom;
  final double? paddingLeft;
  final double? paddingRight;

  final double? verticalContentPadding;
  final double? horizontalContentPadding;

  final double? buttonWidth;
  final double? buttonHeight;
  final VoidCallback? executeFunction;

  final String buttonLabel;

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
        width: buttonWidth ?? double.infinity,
        height: buttonHeight ?? screenHeight * 0.08,
        child: RawMaterialButton(
          onPressed: executeFunction ?? () {},
          elevation: 3.0,
          fillColor: kAppBlue,
          textStyle: ResponsiveTextStyle.uRalewayTxtStyle(
            context,
            0.02,
            kAppWhite,
            FontWeight.normal,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          padding: EdgeInsets.symmetric(
            vertical: verticalContentPadding ?? screenHeight * 0.02,
            horizontal: horizontalContentPadding ?? screenWidth * 0.02,
          ),
          child: Text(
            buttonLabel,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
