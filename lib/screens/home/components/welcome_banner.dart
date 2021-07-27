import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class WelcomeBanner extends StatelessWidget {
  const WelcomeBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(15),
      ),
      width: double.infinity,
      decoration:BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(20),
      ) ,
      child: Text.rich(
       TextSpan(
          text:"Welcome !\n",
          style:TextStyle(color: Colors.white),
          children: [
            TextSpan(
              text :"What You Want Learn ToDay!",
            style:TextStyle(
              fontSize:20,
              fontWeight:FontWeight.bold,
            )
            )
          ]
       )
      ),
    );
  }
}

