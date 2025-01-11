import 'package:fb_clone/core/constants/app_colors.dart';
import 'package:fb_clone/core/utils/app_text_style_utils.dart';
import 'package:fb_clone/core/widgets/cn_large_blue_btn.dart';
import 'package:fb_clone/core/widgets/cn_transparent_large_btn.dart';
import 'package:fb_clone/core/widgets/cn_transparent_txtfields.dart';
import 'package:fb_clone/modules/login/presentation/widgets/others/login_txt_btn.dart';
import 'package:flutter/material.dart';

class LoginTabletScreen extends StatelessWidget {
  const LoginTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight * 0.1),
        child: AppBar(
          leading: Icon(
            Icons.facebook,
            color: kAppWhite,
            size: screenWidth * 0.08,
          ),
          title: Text(
            'FishBook',
            style: ResponsiveTextStyle.uNunitoTxtStyle(context, 0.04, kAppWhite, FontWeight.w500),
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            height: screenHeight * 0.8,
            width: screenWidth * 0.8,
            decoration: BoxDecoration(
              color: kAppWhite,
              boxShadow: [
                BoxShadow(
                  color: kAppGray,
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
              borderRadius: const BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(screenWidth * 0.06),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'FishBook Login',
                    style: ResponsiveTextStyle.uRalewayTxtStyle(
                      context,
                      0.05,
                      kAppBlue,
                      FontWeight.w700,
                    ),
                  ),
                  CNTransparentTextField(
                    topPaddingSize: screenHeight * 0.05,
                    bottomPaddingSize: screenHeight * 0.01,
                    focusColor: kAppBlue,
                    enableColor: kAppGray,
                    focusWidth: screenWidth * 0.002,
                  ),
                  CNTransparentTextField(
                    bottomPaddingSize: screenHeight * 0.05,
                    focusColor: kAppBlue,
                    enableColor: kAppGray,
                    focusWidth: screenWidth * 0.002,
                  ),
                  CNLargeBlueButton(
                    buttonLabel: 'Login',
                    buttonWidth: screenWidth * 0.9,
                    paddingBottom: screenHeight * 0.01,
                  ),
                  CNTransparentLargeBtn(
                    fillColor: kAppSecondaryGrey,
                    onPressed: () {},
                  ),
                  LoginTxtBtn(
                    executeFunction: () {},
                    textColor: kAppBlack,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
