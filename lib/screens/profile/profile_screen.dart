import 'package:edu_course/components/custum_button_nav_bar.dart';
import 'package:edu_course/enums.dart';
import 'package:edu_course/screens/profile/components/body.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget{
  static String routeName = '/profile';
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text("Profile"),
        centerTitle: true,
      ),
      body: Body(),
      bottomNavigationBar: CustonBottomNavbar(
        selectMenu: MenuState.profile
      ),
    );
  }
}

