import 'package:edu_course/screens/profile/components/profile_pic.dart';
import 'package:edu_course/screens/profile/components/profile_menu.dart';

import 'package:flutter/material.dart';


class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
          child: Column(
          children:[
          ProfilePic(),
          SizedBox(height:20),
          ProfileMenu(
            icon:"assets/icons/User Icon.svg",
            text: "My Account",
            press: (){},
          ),
          ProfileMenu(
            icon:"assets/icons/Bell.svg",
            text: "Notification",
            press: (){},
          ),
          ProfileMenu(
            icon:"assets/icons/Question mark.svg",
            text: "Setting",
            press: (){},
          ),
          ProfileMenu(
            icon:"assets/icons/User Icon.svg",
            text: "Help Center",
            press: (){},
          ),
          ProfileMenu(
            icon:"assets/icons/Log out.svg",
            text: "Log Out",
            press: (){},
          )
          

         ]
        ),
    );
    
  }
}

