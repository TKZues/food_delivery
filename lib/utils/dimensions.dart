import 'package:get/get.dart';
class Dimentions{
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView = screenHeight/2.64;
  static double pageViewContainer = screenHeight/3.84;
  static double pageViewTextContainer = screenHeight/7.03;

  //liên quan đến sizedbox
  static double height10 = screenHeight/84.4;
  static double height15 = screenHeight/56.27;
  static double height20 = screenHeight/42.2;
  static double height30 = screenHeight/28.13;

  //liên quan đến font và radius
  static double font20 = screenHeight/42.2;
  static double radius20 = screenHeight/42.2;
  static double radius30 = screenHeight/28.13;
//liên quan đến margin và padding
  static double width10 = screenHeight/84.4;
  static double width15 = screenHeight/56.27;
  static double width20 = screenHeight/42.2;
  static double width30 = screenHeight/28.13;

// list view size
  static double listViewImgSize = screenWidth/3.25;
  static double listViewTextImgSize = screenWidth/3.9;

}