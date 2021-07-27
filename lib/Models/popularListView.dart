import 'package:edu_course/Models/popularList.dart';
import 'package:flutter/material.dart';
import 'popularListUi.dart';

class PopularListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      child: Expanded(
          child: GridView(
        padding: const EdgeInsets.only(top: 0),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: List<Widget>.generate(popularCourse.length, (index) {
          return Padding(
            padding: const EdgeInsets.only(left: 18, right: 18),
            child: PopularListUi(popular: popularCourse[index]),
          );
        }),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 0.0,
            mainAxisSpacing: 32.0,
            childAspectRatio: 0.7),
      )),
    );
  }
}
