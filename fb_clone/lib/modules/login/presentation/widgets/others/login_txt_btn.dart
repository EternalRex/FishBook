import 'package:fb_clone/core/utils/app_text_style_utils.dart';
import 'package:flutter/material.dart';

class LoginTxtBtn extends StatelessWidget {
  const LoginTxtBtn({
    super.key,
    required this.executeFunction,
    this.textColor,
  });

  final VoidCallback executeFunction;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: executeFunction,
      child: Text(
        'Forget Password?',
        style: ResponsiveTextStyle.uNunitoTxtStyle(
          context,
          0.02,
          textColor,
          FontWeight.normal,
        ),
      ),
    );
  }
}
