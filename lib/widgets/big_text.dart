import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';

class BigText extends StatelessWidget {
  final Color color;
  final String text;
  double size = 0;
  TextOverflow textOverflow;
   BigText(
      {Key? key, this.color = const Color(0xFF332d2b), required this.text,this.size = 20, this.textOverflow = TextOverflow.ellipsis}
      ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: textOverflow,
      maxLines: 1,
      style: TextStyle(
        fontSize: size==0?Dimentions.font20:size,
        color: color,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
      ),
    );
  }
}
