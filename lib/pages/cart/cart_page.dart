import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_delivery/controllers/cart_controller.dart';
import 'package:flutter_food_delivery/pages/home/main_food_page.dart';
import 'package:flutter_food_delivery/utils/app_constants.dart';
import 'package:flutter_food_delivery/utils/colors.dart';
import 'package:flutter_food_delivery/utils/dimensions.dart';
import 'package:flutter_food_delivery/widgets/app_icon.dart';
import 'package:flutter_food_delivery/widgets/big_text.dart';
import 'package:flutter_food_delivery/widgets/small_text.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                top: Dimensions.height20,
                left: Dimensions.width20,
                right: Dimensions.width20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Get.back();
                      },
                      child: AppIcon(
                          icon: Icons.arrow_back_ios,
                          iconColor: Colors.white,
                          backgroundColor: AppColors.mainColor,
                          size: Dimensions.iconSize55),
                    ),
                    SizedBox(
                      width: Dimensions.width20 * 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => MyHomePage());
                      },
                      child: AppIcon(
                          icon: Icons.home_outlined,
                          iconColor: Colors.white,
                          backgroundColor: AppColors.mainColor,
                          size: Dimensions.iconSize55),
                    ),
                    AppIcon(
                        icon: Icons.shopping_cart,
                        iconColor: Colors.white,
                        backgroundColor: AppColors.mainColor,
                        size: Dimensions.iconSize55),
                  ],
                )),
            Positioned(
              top: Dimensions.height20 * 5,
              left: Dimensions.width20,
              right: Dimensions.width20,
              bottom: 0,
              child: Container(
                // color: Colors.red,
                margin: EdgeInsets.only(top: Dimensions.height15),
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: GetBuilder<CartController>(builder: (cartController) {
                    return ListView.builder(
                        itemCount: cartController.getItems.length,
                        itemBuilder: (_, index) {
                          return Container(
                            height: 100,
                            width: double.maxFinite,
                            child: Row(
                              children: [
                                Container(
                                  width: Dimensions.height20 * 5,
                                  height: Dimensions.height20 * 5,
                                  margin: EdgeInsets.only(
                                      bottom: Dimensions.height10),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              AppConstants.BASE_URL +
                                                  AppConstants.UPLOAD_URL +
                                                  cartController
                                                      .getItems[index].img!)),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                          Dimensions.radius20)),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                    child: Container(
                                  height: Dimensions.height20 * 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      BigText(
                                        text: cartController
                                            .getItems[index].name!,
                                        size: Dimensions.font26,
                                      ),
                                      SmallText(text: "Spicy"),
                                      SizedBox(height: Dimensions.height20),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          BigText(
                                            text:
                                                "\$${cartController.getItems[index].price!}",
                                            color: Colors.redAccent,
                                          ),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(left: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  GestureDetector(
                                                    onTap: () {},
                                                    child: Icon(
                                                      Icons.remove,
                                                      color:
                                                          AppColors.textColor,
                                                      size:
                                                          Dimensions.iconSize35,
                                                    ),
                                                  ),
                                                  // SizedBox(width: Dimensions.width10),
                                                  SmallText(
                                                    text: "3",
                                                    size: Dimensions.font26,
                                                  ),
                                                  // SizedBox(width: Dimensions.width10),
                                                  GestureDetector(
                                                    onTap: () {},
                                                    child: Icon(
                                                      Icons.add,
                                                      color:
                                                          AppColors.textColor,
                                                      size:
                                                          Dimensions.iconSize35,
                                                    ),
                                                  ),
                                                ]),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ))
                              ],
                            ),
                          );
                        });
                  }),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
