
import 'package:edu_course/screens/home/components/welcome_banner.dart';
import 'package:edu_course/Models/popularListView.dart';
import 'package:edu_course/components/section_title.dart';
import 'package:edu_course/Models/categoryListView.dart';
import 'package:edu_course/size_config.dart';
import 'package:flutter/material.dart';
import 'categories.dart';
import 'home_header.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenHeight(20)),
            WelcomeBanner(),
            Categories(),
            SizedBox(height: getProportionateScreenHeight(15)),
            SectionTitle(title: "Recommendeds for you",),
            SizedBox(height: getProportionateScreenHeight(20)),
            CategoryListView(),
            SizedBox(height: getProportionateScreenHeight(20)),
            SectionTitle(title: "Popular Course",),
            SizedBox(height: getProportionateScreenHeight(10)),
            PopularListView(),
          ],
        ),
      ),
    );
  }
}

