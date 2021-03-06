import 'package:auth_ui/component/already_have_an_account_text.dart';
import 'package:auth_ui/component/rounded_button.dart';
import 'package:auth_ui/component/rounded_input_field.dart';
import 'package:auth_ui/component/rounded_password_field.dart';
import 'package:auth_ui/screens/login/login_screen.dart';
import 'package:auth_ui/screens/signup/component/background_signup.dart';
import 'package:auth_ui/screens/signup/component/or_divider.dart';
import 'package:auth_ui/screens/signup/component/social_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackgroundSignUp(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            SizedBox(height: 10),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.33,
            ),
            SizedBox(height: 15),
            RoundedInputField(
              hintText: "Your Name",
              onChanged: (value) {},
            ),
            SizedBox(height: 15),
            RoundedInputField(
              icon: Icons.email,
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            SizedBox(height: 15),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            SizedBox(height: 5),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            SizedBox(height: 15),
            AlreadyHaveAnAccountText(
              login: false,
              press: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (ctx) => LoginScreen(),
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            OrDivider(),
            SizedBox(height: 15),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocialIcon(
                    iconScr: "assets/icons/facebook.svg",
                    press: () {},
                  ),
                  SocialIcon(
                    iconScr: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                  SocialIcon(
                    iconScr: "assets/icons/google-plus.svg",
                    press: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
