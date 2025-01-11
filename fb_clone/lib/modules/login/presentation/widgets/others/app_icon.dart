import 'package:fb_clone/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class LoginAppIcon extends StatelessWidget {
  const LoginAppIcon({
    super.key,
    required this.appIconSize,
    required this.bottomPaddingSize,
    this.topPaddingSize,
    this.leftPaddingSize,
    this.rightPaddingSize,
  });

  final double appIconSize;
  final double? topPaddingSize;
  final double bottomPaddingSize;
  final double? leftPaddingSize;
  final double? rightPaddingSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: bottomPaddingSize,
        top: topPaddingSize ?? 0.0,
        left: leftPaddingSize ?? 0.0,
        right: rightPaddingSize ?? 0.0,
      ),
      child: Icon(
        Icons.facebook_rounded,
        color: kAppWhite,
        size: appIconSize,
      ),
    );
  }
}
