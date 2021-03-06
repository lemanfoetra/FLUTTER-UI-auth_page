import 'package:auth_ui/component/already_have_an_account_text.dart';
import 'package:auth_ui/component/rounded_button.dart';
import 'package:auth_ui/component/rounded_input_field.dart';
import 'package:auth_ui/component/rounded_password_field.dart';
import 'package:auth_ui/screens/login/component/background.dart';
import 'package:auth_ui/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(
              height: 20,
            ),
            RoundedInputField(
              icon: Icons.email,
              hintText: "Your Email",
            ),
            SizedBox(
              height: 15,
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            SizedBox(height: 5),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            SizedBox(height: 15),
            AlreadyHaveAnAccountText(
              login: true,
              press: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (ctx) => SignUpScreen(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
