import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_page/pages/P001/Screens/Login/login_screen.dart';
import 'package:login_page/pages/P001/Screens/Signup/components/background.dart';
import 'package:login_page/pages/P001/Screens/Signup/components/or_divider.dart';
import 'package:login_page/pages/P001/Screens/Signup/components/social_icon.dart';
import 'package:login_page/pages/P001/components/already_have_an_account_acheck.dart';
import 'package:login_page/pages/P001/components/rounded_button.dart';
import 'package:login_page/pages/P001/components/rounded_input_text.dart';
import 'package:login_page/pages/P001/components/rounded_password_field.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGN UP",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * 0.011),
            SvgPicture.asset(
              "assets/icons/p001/signup.svg",
              height: size.height * 0.25,
            ),
            SizedBox(height: size.height * 0.01),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  iconSrc: "assets/icons/p001/facebook.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/p001/twitter.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/p001/google-plus.svg",
                  press: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}