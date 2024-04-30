import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_column.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/exandable_text_wiglet.dart';

import '../../utils/color.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_and _text_widget.dart';
import '../../widgets/small_text.dart';

class FoodPopularDetail extends StatelessWidget {
  const FoodPopularDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //background image
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimentions.popularFoodImgSize,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/image/food0.png"
                    )
                  )
                ),
            )
          ),
          //icon widget
          Positioned(
            top: Dimentions.height30,
              left: Dimentions.width20,
              right: Dimentions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart_outlined)
                ],
              )
          ),
          //introduce food
          Positioned(
            left: 0,
              right: 0,
              bottom: 0,
              top: Dimentions.popularFoodImgSize-20,
              child: Container(
                padding: EdgeInsets.only(left: Dimentions.width20, right: Dimentions.width20, top: Dimentions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimentions.radius20),
                    topLeft: Radius.circular(Dimentions.radius20),
                  ),
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text: "Biriani",),
                    SizedBox(height: Dimentions.height10,),
                    BigText(text: "Introduce"),
                    
                    Expanded(
                      child: SingleChildScrollView(
                        child: Exandable(text: "Column is also a layout widget. It takes a "
                            "list of chil arranges them vertically. By default, it "
                            "sizes itself to fit ichildren horizontally, and tries "
                            "to be as tall as its pare Invoke debug painting(press p in "
                            "the console, choose theToggle Debug Painaction from the Flutter "
                            "Inspector in AndroidStudio, or the Toggle Debug Paint command in "
                            "Visual Studio Code)to see the wireframe for each widget"
                            "list of chil arranges them vertically. By default, it "
                            "sizes itself to fit ichildren horizontally, and tries "
                            "to be as tall as its pare Invoke debug painting(press p in "
                            "the console, choose theToggle Debug Painaction from the Flutter "
                            "Inspector in AndroidStudio, or the Toggle Debug Paint command in "
                            "Visual Studio Code)to see the wireframe for each widget"
                            "list of chil arranges them vertically. By default, it "
                            "sizes itself to fit ichildren horizontally, and tries "
                            "to be as tall as its pare Invoke debug painting(press p in "
                            "the console, choose theToggle Debug Painaction from the Flutter "
                            "Inspector in AndroidStudio, or the Toggle Debug Paint command in "
                            "Visual Studio Code)to see the wireframe for each widget" ),
                      ),
                    )
                  ],
                ),
              )
          ),
          
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimentions.bottomHeightBar,
        padding: EdgeInsets.only(left: Dimentions.width20, right: Dimentions.width20, top: Dimentions.height30, bottom: Dimentions.height30),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimentions.radius20*2),
            topRight: Radius.circular(Dimentions.radius20*2),
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(left: Dimentions.width20, right: Dimentions.width20, top: Dimentions.height15, bottom: Dimentions.height15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimentions.radius20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(Icons.remove,color: AppColors.signColor,),
                  SizedBox(width: Dimentions.width10,),
                  BigText(text: "0"),
                  SizedBox(width: Dimentions.width10,),
                  Icon(Icons.add,color: AppColors.signColor,)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: Dimentions.width20, right: Dimentions.width20, top: Dimentions.height15, bottom: Dimentions.height15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimentions.radius20),
                color: AppColors.mainColor,
              ),
              child: Row(
                children: [
                  BigText(text: "\$0.08"),
                  BigText(text: "Add to cart"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
