import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResponsiveTextStyle {
  //poppins text style
  static TextStyle uPoppinsTxtStyle(
    BuildContext context,
    double decimalSize,
    Color? color,
    FontWeight? weight,
  ) {
    double screenHeight = MediaQuery.of(context).size.height;
    double fontSize = screenHeight * decimalSize;
    return GoogleFonts.poppins(
      color: color,
      fontSize: fontSize,
      fontWeight: weight,
    );
  }

  //Raleway text style
  static TextStyle uRalewayTxtStyle(
    BuildContext context,
    double decimalSize,
    Color? color,
    FontWeight? weight,
  ) {
    double screenHeight = MediaQuery.of(context).size.height;
    double fontSize = screenHeight * decimalSize;
    return GoogleFonts.raleway(
      color: color,
      fontSize: fontSize,
      fontWeight: weight,
    );
  }

  //Nunito text Style
  static TextStyle uNunitoTxtStyle(
    BuildContext context,
    double decimalSize,
    Color? color,
    FontWeight? weight,
  ) {
    double screenHeight = MediaQuery.of(context).size.height;
    double fontSize = screenHeight * decimalSize;
    return GoogleFonts.poppins(
      color: color,
      fontSize: fontSize,
      fontWeight: weight,
    );
  }
}
