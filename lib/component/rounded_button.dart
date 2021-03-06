import 'package:auth_ui/constant.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButton({
    this.text,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: TextButton(
          onPressed: press,
          style: ButtonStyle(
            padding: MaterialStateProperty.resolveWith(
              (Set<MaterialState> states) {
                return EdgeInsets.symmetric(vertical: 15, horizontal: 40);
              },
            ),
            backgroundColor: MaterialStateProperty.resolveWith(
              (Set<MaterialState> states) {
                return color;
              },
            ),
          ),
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
