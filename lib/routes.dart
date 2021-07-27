import 'package:edu_course/screens/complete_profile/complete_profile_screen.dart';
import 'package:edu_course/screens/forget_password/forget_password_screen.dart';
import 'package:edu_course/screens/home/home_screen.dart';
import 'package:edu_course/screens/login_success/login_success_screen.dart';
import 'package:edu_course/screens/profile/profile_screen.dart';
import 'package:edu_course/screens/sign_in/sign_in.dart';
import 'package:edu_course/screens/sign_up/sign_up_screen.dart';
import 'package:edu_course/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';


// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgetPasswordScreen.routeName: (context) => ForgetPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  ProfileScreen.routeName:(context)=>ProfileScreen(),


  
};
