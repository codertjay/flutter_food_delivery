import 'package:get/get.dart';

class Dimensions {
  // divide screen height from the normal height
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  // height(800)/container_height(220) = 3.84
  static double pageViewContainer = screenHeight / (screenHeight / 220);

  static double pageViewTextContainer = screenHeight / (screenHeight / 120);
  static double pageView = screenHeight / (screenHeight / 320);

  // dynamic height ( my height way)
  static double height10 = screenHeight * 0.010;
  static double height15 = screenHeight * 0.015;
  static double height20 = screenHeight * 0.020;
  static double height30 = screenHeight * 0.030;
  static double height45 = screenHeight * 0.045;

  // dynamic width
  static double width5 = screenWidth / (screenWidth / 5);
  static double width10 = screenWidth / (screenWidth / 10);
  static double width15 = screenWidth / (screenWidth / 15);
  static double width20 = screenWidth / (screenWidth / 20);
  static double width30 = screenWidth / (screenWidth / 30);
  static double width40 = screenWidth / (screenWidth / 40);
  static double width45 = screenWidth / (screenWidth / 45);
  static double width50 = screenWidth / (screenWidth / 50);
  static double width60 = screenWidth / (screenWidth / 60);

  static double font20 = screenHeight * 0.020;
  static double font26 = screenHeight * 0.026;
  static double font30 = screenHeight * 0.030;
  static double font16 = screenHeight * 0.016;

  static double radius20 = screenHeight * 0.020;

  static double radius30 = screenHeight * 0.020;
  static double radius40 = screenHeight * 0.040;

  static double iconSize55 = screenHeight * 0.055;
  static double iconSize45 = screenHeight * 0.045;
  static double iconSize35 = screenHeight * 0.035;
  static double iconSize24 = screenHeight * 0.024;
  static double iconSize16 = screenHeight * 0.016;

  // list view size
  static double listViewImgSize = screenHeight * 0.12;
  static double listViewTextContSize = screenHeight * 0.10;

// popular food
  static double popularFoodImgSize = screenHeight * 0.35;
  static double popularFoodDetailSize = screenHeight * 0.30;
  static double bottomHeight = screenHeight * 0.12;
}

double _dimensionCalc(double screen, double value) {
  double answer = screen / value;
  print(answer);
  return answer;
}
