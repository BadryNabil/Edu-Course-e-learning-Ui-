import 'package:edu_course/screens/home/home_screen.dart';
import 'package:edu_course/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import '../enums.dart';

class CustonBottomNavbar extends StatelessWidget {
  const CustonBottomNavbar({
    Key key, 
    @required this.selectMenu,
  }) : super(key: key);

  final MenuState selectMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveColor = Color(0xFF868686);  
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft:Radius.circular(40),
          topRight:Radius.circular(40),
        ),
        boxShadow:[
          BoxShadow(
            offset: Offset(0,-15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          )
        ] 
      ),
      child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/Shop Icon.svg",
                color: MenuState.home == selectMenu
                ? kPrimaryColor
                : inActiveColor,
              ), 
              onPressed: ()=> 
              Navigator.pushNamed(context, HomeScreen.routeName),
            ),
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/Heart Icon.svg",
                color: MenuState.favourit == selectMenu
                ? kPrimaryColor
                : inActiveColor,
              ), 
              onPressed: null
            ),
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/Chat bubble Icon.svg",
                color: MenuState.message == selectMenu
                ? kPrimaryColor
                : inActiveColor,
              ), 
              onPressed: null
            ),
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/User Icon.svg",
                color: MenuState.profile == selectMenu
                ? kPrimaryColor
                : inActiveColor,
              ), 
              onPressed: ()=> 
              Navigator.pushNamed(context, ProfileScreen.routeName),
            ),
          ]
        ),
      ),
    );
  }
}