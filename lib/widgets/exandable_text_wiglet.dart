import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/color.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/small_text.dart';

class Exandable extends StatefulWidget {
  final String text;
  const Exandable({Key? key, required this.text}) : super(key: key);

  @override
  State<Exandable> createState() => _ExandableState();
}

class _ExandableState extends State<Exandable> {
  late  String firstHaft;
  late String secondHaft;

  bool hiddenText = true;
  double textHeight = Dimentions.screenHeight/6.63;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.text.length > textHeight){
      firstHaft = widget.text.substring(0, textHeight.toInt());
      secondHaft = widget.text.substring(textHeight.toInt()+1, widget.text.length);
    }else{
      firstHaft = widget.text;
      secondHaft ="";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHaft.isEmpty?SmallText(color: AppColors.paraColor,size: Dimentions.font16 ,text: firstHaft):Column(
        children: [
          SmallText(height: 1.8,color: AppColors.paraColor,size: Dimentions.font16 ,text: hiddenText?(firstHaft+'...'):(firstHaft+secondHaft)),
          InkWell(
            onTap: (){
              setState(() {
                hiddenText = !hiddenText;
              });
            },
            child: Row(
              children: [
                SmallText(size: Dimentions.font16 ,text: "Show more", color: AppColors.mainColor,),
                Icon(hiddenText?(Icons.arrow_drop_down):(Icons.arrow_drop_up), color: AppColors.mainColor,)
              ],
            ),
          )

        ],
      )
    );
  }
}
