import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:food_delivery/home/food_page_body.dart';
import 'package:food_delivery/utils/color.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/small_text.dart';

import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 30, bottom: 15),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: "Bangladesh", color: AppColors.mainColor,),
                      Row(
                        children: [
                          SmallText(text: "TiKay", color: Colors.black54,),
                          Icon(Icons.arrow_drop_down_rounded),
                        ],
                      )
                      ],
                  ),
                  Center(
                    child: Container(
                      width: 50,
                      height: 50,
                      child: Icon(Icons.search, color: Colors.white,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.mainColor),
                    ),
                  )
                ],
              ),
            ),
          ),
          //showing the body
          Expanded(child: SingleChildScrollView(
            child: FoodPageBody(),
          )),
        ],
      )
    );
  }
}
