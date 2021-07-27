
import 'package:edu_course/Models/categoryListUi.dart';
import 'package:edu_course/size_config.dart';
import 'package:flutter/material.dart';

import 'categoryList.dart';
class CategoryListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(160),
      width: double.infinity,
        child: ListView.builder(
        padding: const EdgeInsets.only(left: 15),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: categoryList.length,
        itemBuilder: (context , index){
          return CategoryListUi(category: categoryList[index],);
        }
      ),
    );
  }
}