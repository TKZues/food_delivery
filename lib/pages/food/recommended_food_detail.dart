import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery/utils/color.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/exandable_text_wiglet.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimentions.radius20),
                    topLeft: Radius.circular(Dimentions.radius20),

                  )
                ),

                  child: Center(child: BigText(text: "Sliver App Bar", size: Dimentions.font26,)),
                // height: double.maxFinite,
                padding: EdgeInsets.only(top: 5,bottom: 10),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,

              ),
            ),
          ),
          SliverToBoxAdapter(
           child: Column(
             children: [
               Container(
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
           "Visual Studio Code)to see the wireframe for each widget"
           "Column is also a layout widget. It takes a "
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
               "Visual Studio Code)to see the wireframe for each widget"),
                 margin: EdgeInsets.only(left: Dimentions.width10, right: Dimentions.width10),
               )
             ],
           ), 
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(top: Dimentions.height10, bottom: Dimentions.height10, left: Dimentions.width20*2.5, right: Dimentions.width20*2.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    icon: Icons.add,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                  size: Dimentions.iconSize24,
                ),
                BigText(text: "\$12.88"+" X"+" 0", color: AppColors.mainBlackColor, size: Dimentions.font26,),
                AppIcon(
                  icon: Icons.remove,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                  size: Dimentions.iconSize24,
                )
              ],
            ),
          ),
          Container(
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
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
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
                      BigText(text: "\$0.08", color: Colors.white,),
                      BigText(text: "Add to cart", color: Colors.white,),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
