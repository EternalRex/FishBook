import 'package:fb_clone/config/routes/app_routes.dart';
import 'package:fb_clone/core/constants/app_colors.dart';
import 'package:fb_clone/core/utils/app_text_style_utils.dart';
import 'package:fb_clone/core/widgets/cn_large_blue_btn.dart';
import 'package:fb_clone/core/widgets/cn_transparent_large_btn.dart';
import 'package:fb_clone/core/widgets/cn_transparent_txtfields.dart';
import 'package:fb_clone/modules/login/presentation/widgets/others/app_icon.dart';
import 'package:fb_clone/modules/login/presentation/widgets/others/login_txt_btn.dart';
import 'package:fb_clone/modules/login/presentation/widgets/screen/web_Ldesktop_screen.dart';
import 'package:fb_clone/modules/login/presentation/widgets/screen/web_desktop_screen.dart';
import 'package:fb_clone/modules/login/presentation/widgets/screen/web_mobile_screen.dart';
import 'package:fb_clone/modules/login/presentation/widgets/screen/web_tablet_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    //Responsive design principle
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: screenHeight,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color(0xFF1877F2),
                kAppSecondaryGrey,
              ],
            ),
          ),
          child:
              kIsWeb ? _buildWebLayout() : _buildMobileLayout(context, screenWidth, screenHeight),
        ),
      ),
    );
  }
}

Widget _buildMobileLayout(BuildContext context, screenWidth, double screenHeight) {
  return Padding(
    padding: EdgeInsets.only(
      top: screenHeight * 0.05,
    ),
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              LoginAppIcon(
                appIconSize: screenHeight * 0.1,
                bottomPaddingSize: screenHeight * 0.09,
              ),
              CNTransparentTextField(
                leftPaddingSize: screenWidth * 0.05,
                rightPaddingSize: screenWidth * 0.05,
                bottomPaddingSize: screenHeight * 0.02,
                topPaddingSize: screenHeight * 0,
                textStyle: ResponsiveTextStyle.uNunitoTxtStyle(
                  context,
                  0.02,
                  kAppWhite,
                  FontWeight.normal,
                ),
                hintText: 'Email Address',
                focusColor: kAppBlue,
                enableColor: kAppWhite,
                leadingIcon: Icons.email,
              ),
              CNTransparentTextField(
                leftPaddingSize: screenWidth * 0.05,
                rightPaddingSize: screenWidth * 0.05,
                bottomPaddingSize: screenHeight * 0.01,
                topPaddingSize: screenHeight * 0,
                textStyle: ResponsiveTextStyle.uNunitoTxtStyle(
                  context,
                  0.02,
                  kAppWhite,
                  FontWeight.normal,
                ),
                hintText: 'Password',
                focusColor: kAppBlue,
                enableColor: kAppWhite,
                leadingIcon: Icons.security,
              ),
              SizedBox(
                height: screenHeight * 0.08,
              ),
              //Login Button
              CNLargeBlueButton(
                buttonWidth: screenWidth * 0.9,
                buttonLabel: 'Login',
                paddingBottom: screenHeight * 0.01,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.05,
                ),
                //Create Account Button
                child: CNTransparentLargeBtn(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.register,
                    );
                  },
                ),
              ),
              //Forget Password Button
              LoginTxtBtn(
                executeFunction: () {},
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget _buildWebLayout() {
  return LayoutBuilder(
    builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth < 600) {
        return const LoginMobileScreen();
      } else if (constraints.maxWidth >= 600 && constraints.maxWidth < 840) {
        return const LoginTabletScreen();
      } else if (constraints.maxWidth >= 840 && constraints.maxWidth <= 1280) {
        return const LoginDesktopScreen();
      } else {
        return const LoginLargeDesktopScreen();
      }
    },
  );
}
