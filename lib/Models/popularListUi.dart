import 'package:edu_course/Models/popularCourse.dart';
import 'package:edu_course/size_config.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class PopularListUi extends StatelessWidget {
  final PopularCourse popular;
  final Function onTab;

  const PopularListUi({Key key, this.popular, this.onTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(50),
      child: Stack(children: [
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: darkBlue.withOpacity(0.25),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                        top: 15,
                        right: 15,
                      ),
                      child: Text(
                        "${popular.title}",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: "muli",
                            fontSize: getProportionateScreenHeight(18),
                            letterSpacing: 0.27,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                          left: 15,
                          top: 10,
                          right: 15,
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "${popular.lessonCount} Lessons",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "muli",
                                    fontSize: getProportionateScreenHeight(16),
                                    letterSpacing: 0.27,
                                    color: Colors.black.withOpacity(0.5)),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Text(
                                      "${popular.rating}",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontFamily: "muli",
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              getProportionateScreenWidth(15),
                                          letterSpacing: 0.27,
                                          color: Colors.black),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.red[300],
                                      size: getProportionateScreenHeight(20),
                                    ),
                                  ],
                                ),
                              ),
                            ])),
                    SizedBox(height: 10),
                    Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Center(
                              child: Image.asset(popular.imagePath,
                                  fit: BoxFit.contain),
                            )))
                  ],
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
