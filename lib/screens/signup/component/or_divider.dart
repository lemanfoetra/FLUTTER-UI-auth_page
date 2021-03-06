import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: Row(
        children: <Widget>[
          dividerLine,
          Text(
            "OR",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          dividerLine,
        ],
      ),
    );
  }

  Widget get dividerLine {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Color(0xFFD9D9D9), width: 1.5),
            ),
          ),
        ),
      ),
    );
  }
}
