import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_page/pages/P001/Screens/Welcome/components/background.dart';
import 'package:login_page/pages/P001/components/rounded_button.dart';
import 'package:login_page/pages/P001/constants.dart';

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
              "WELCOME TO EDU",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * 0.05),
            SvgPicture.asset(
              "assets/icons/p001/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            RoundedButton(
              text: "SIGNUP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}