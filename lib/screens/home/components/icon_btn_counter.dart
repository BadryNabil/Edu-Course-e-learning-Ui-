import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key key, 
    @required this.svgSrc, 
    this.numOfItem = 0, 
    @required this.press,
  }) : super(key: key);
  final String svgSrc;
  final int numOfItem;
  final GestureTapCallback press;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
        child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            padding:
            EdgeInsets.all(getProportionateScreenWidth(12)),
            height: getProportionateScreenHeight(46),
            width: getProportionateScreenWidth(46),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgSrc),
          ),
          if(numOfItem != 0)
          Positioned(
            right: 0,
            top: -3,
            child: Container(
                width: getProportionateScreenWidth(16),
                height: getProportionateScreenWidth(16),
                decoration: BoxDecoration(
                  color: Color(0XFFFF4848),
                  shape: BoxShape.circle,
                  border:
                      Border.all(width: 1.5, color: Colors.white),
                ),
                child: Center(
                    child: Text(
                    "$numOfItem",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(10),
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      height: 1,
                    ),
                  ),
                ),
              ),
          )
        ],
      ),
    );
  }
}
