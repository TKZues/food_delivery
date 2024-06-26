import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/small_text.dart';

import '../utils/color.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_and _text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: "Chinese Side",size: Dimentions.font26,),
        SizedBox(height: Dimentions.height10,),
        Row(
          children: [
            Wrap(
              children: List.generate(5, (index) => Icon(Icons.star,color: AppColors.mainColor,size: 15,)),
            ),
            SizedBox(width: 10,),
            SmallText(text: "4.5",),
            SizedBox(width: 10,),
            SmallText(text: "1287"),
            SizedBox(width: 10,),
            SmallText(text: "comment")
          ],
        ),
        SizedBox(height: Dimentions.height10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
                icon: Icons.circle_sharp,
                text: 'Normal',
                iconColor: AppColors.iconColor1),
            IconAndTextWidget(
                icon: Icons.location_on,
                text: '1.7km',
                iconColor: AppColors.mainColor),
            IconAndTextWidget(
                icon: Icons.access_time,
                text: 'Normal',
                iconColor: AppColors.iconColor2)
          ],
        )
      ],
    );
  }
}
