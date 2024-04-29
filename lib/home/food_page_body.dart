import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(

      color: Colors.redAccent,
      height: 320,
      child: PageView.builder(
        itemCount: 5,
          itemBuilder: (context, position){
            return _builPageItem(position);
          })
      );
  }
  Widget _builPageItem(int index){
    return Stack(
      children: [
        Container(
          height: 220,
          margin: EdgeInsets.only(left: 5, right: 5),
          decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: index.isEven?Color(0xFF69c5df):Color(0xFF9294cc),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      "assets/image/food0.png"
                  )
              )
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            margin: EdgeInsets.only(left: 5, right: 5),
            decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: index.isEven?Color(0xFF69c5df):Color(0xFF9294cc),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        "assets/image/food0.png"
                    )
                )
            ),
          ),
        )
      ],
    );
  }
}
