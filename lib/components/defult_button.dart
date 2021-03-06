import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';
class DefultButton extends StatelessWidget {
  const DefultButton({
    Key key, 
    this.text, 
    this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: getProportionateScreenHeight(56),
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(20)
          ),
        color: kPrimaryColor,
        onPressed: press, 
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: getProportionateScreenWidth(18),
          ),
        )
      ),
    );
  }
}
