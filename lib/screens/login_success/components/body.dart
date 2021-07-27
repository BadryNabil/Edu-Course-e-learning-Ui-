import 'package:edu_course/components/defult_button.dart';
import 'package:edu_course/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:70),
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          Image.asset(
            "assets/images/success.png",
            height: SizeConfig.screenHeight * 0.3,
             //40%
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.08),
          Text(
            "Login Success",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(30),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Spacer(),
          SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            child: DefultButton(
              text: "Back to home",
              press: () => Navigator.pushNamed(context, HomeScreen.routeName),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
