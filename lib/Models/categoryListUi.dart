import 'package:edu_course/Models/category.dart';
import 'package:edu_course/size_config.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class CategoryListUi extends StatelessWidget {
  final Category category;
  const CategoryListUi({Key key, this.category}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(260),
      child: Stack(
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 18),
              child: Container(
                  child: Row(children: <Widget>[
                SizedBox(
                  width: getProportionateScreenWidth(20),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: darkBlue.withOpacity(0.15),
                      borderRadius: BorderRadius.all(
                        Radius.circular(getProportionateScreenWidth(30)),
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: getProportionateScreenWidth(70),
                        ),
                        Expanded(
                            child: Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: getProportionateScreenHeight(15),
                                    right: getProportionateScreenWidth(15),
                                  ),
                                  child: Container(
                                      child: Text(
                                    category.title,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize:
                                            getProportionateScreenWidth(15),
                                        fontFamily: "muli",
                                        letterSpacing: 0.27,
                                        color: Colors.black),
                                  )),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    right: getProportionateScreenWidth(20),
                                    bottom: getProportionateScreenHeight(15),
                                    top: getProportionateScreenHeight(5),
                                  ),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          "${category.lessonCount} Lessons",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontFamily: "muli",
                                              fontWeight: FontWeight.bold,
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      15),
                                              letterSpacing: 0.27,
                                              color: Colors.black
                                                  .withOpacity(0.5)),
                                        ),
                                        Container(
                                          child: Row(children: <Widget>[
                                            Text(
                                              "${category.rating}",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontFamily: "muli",
                                                  fontWeight: FontWeight.bold,
                                                  fontSize:
                                                      getProportionateScreenWidth(
                                                          15),
                                                  letterSpacing: 0.27,
                                                  color: Colors.black),
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.red[300],
                                              size:
                                                  getProportionateScreenHeight(
                                                      20),
                                            ),
                                          ]),
                                        ),
                                      ]),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    bottom: 0,
                                    right: getProportionateScreenWidth(10),
                                  ),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          "Rs ${category.money}",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontFamily: "muli",
                                              fontWeight: FontWeight.bold,
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      18),
                                              letterSpacing: 0.27,
                                              color: darkBlue),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: GestureDetector(
                                              onTap: () {},
                                              child: Icon(
                                                Icons.favorite,
                                                size:
                                                    getProportionateScreenHeight(
                                                        20),
                                                color: Colors.red,
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                )
                              ]),
                        )),
                      ],
                    ),
                  ),
                )
              ]))),
          Positioned(
            top: 15,
            bottom: 15,
            left: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: darkBlue.withOpacity(0.4), shape: BoxShape.circle),
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Image.asset(category.imagePath),
              ),
            ),
          )
        ],
      ),
    );
  }
}
