import 'package:edu_course/components/custum_button_nav_bar.dart';
import 'package:flutter/material.dart';
import '../../enums.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
       bottomNavigationBar: CustonBottomNavbar(
        selectMenu: MenuState.home
      ),
    );
  }
}
