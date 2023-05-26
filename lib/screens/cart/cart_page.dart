import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delievery/widgets/AppIcon.dart';

import '../../widgets/big_text.dart';
import '../../widgets/small_text.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 60,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppIcon(icon: Icons.arrow_back,iconColor: Colors.white,backgroundColor: Colors.blue,iconSize: 24,),
                    SizedBox(width: 100,),
                    AppIcon(icon: Icons.home_outlined,iconColor: Colors.white,backgroundColor: Colors.blue,iconSize: 24,),
                    AppIcon(icon: Icons.shopping_cart,iconColor: Colors.white,backgroundColor: Colors.blue,iconSize: 24,),
                  ],
          )),
          Positioned(
              top: 100,
              left: 20,
              right: 1,
              bottom: 0,
              child: Container(
                margin: EdgeInsets.only(top: 15),
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (_,index){
                return Container(
                  height: 100,
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(bottom: 10,),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                            "assets/food1.jpg"
                          )),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded( //expanded widget used bcz it takes all the available space in parent container
                        child: Container(
                          height: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              BigText(text: "Nutritious Food Package",color: Colors.black,),
                              SmallText(text: "Spicy",),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  BigText(text: "LKR 2500",color: Colors.red,),
                                  Container(
                                    padding: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(Icons.remove,color: Colors.black),
                                        SizedBox(width: 5),
                                        BigText(text: "0",size: 18),
                                        SizedBox(width: 5),
                                        Icon(Icons.add)
                                      ],
                                    ),
                                  ),
                                ],
                              )

                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
            }),
          ))
        ],
      ),
    );
  }
}

