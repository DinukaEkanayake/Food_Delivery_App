import 'package:flutter/material.dart';
import 'package:food_delievery/widgets/AppIcon.dart';
import 'package:food_delievery/widgets/expandable_text.dart';

import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text_widget.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //image
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/list1.jpg"
                      )
                  )
                ),
              ),
          ),
          //icon widgets
          Positioned(
            top: 60,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
          ),
          //intro
          Positioned(
              left: 0,
              right: 0,
              top: 350,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.only(left: 20,right: 20,top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)
                  ),
                  color: Colors.white54
                ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(text: "Chineese Food"),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Wrap(
                                children: List.generate(5, (index) => Icon(Icons.star,color: Colors.blue,size: 15))
                            ),
                            SizedBox(width: 10),
                            SmallText(text: "4.5"),
                            SizedBox(width: 10),
                            SmallText(text: "1500"),
                            SizedBox(width: 10),
                            SmallText(text: "Comments")
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconAndText(icon: Icons.circle_sharp, text: "Normal", color: Colors.grey, iconColor: Colors.yellow),
                            //SizedBox(width: 10),
                            IconAndText(icon: Icons.location_on, text: "Location", color: Colors.grey, iconColor: Colors.green),
                            //SizedBox(width: 10),
                            IconAndText(icon: Icons.access_time_rounded, text: "Time", color: Colors.grey, iconColor: Colors.orange),
                          ],
                        )
                      ],
                    ),
                      SizedBox(height: 20),
                      BigText(text: "Introduce"),
                      SizedBox(height: 20),
                      Expanded(child: SingleChildScrollView(child: ExpandableText(text: "Beijing Roasted Duck Peking duck (北京烤鸭 Běijīng kǎoyā) is a famous dish from Beijing, enjoying world fame, and considered as one of China national dishes. Peking duck is savored for its thin and crispy skin. Sliced Peking duck is often eaten with pancakes, sweet bean sauce, or soy sauce with mashed garlic. It is a must-taste dish in Beijing! As “the first dish to taste in China”, Beijing Roast Duck used to be a royal dish in medieval China. It has been a “national dish of diplomacy” since the 1970s, when it was first used for the reception of foreign guests by Premier Zhou Enlai (the first Premier of the People's Republic of China). It is highly praised by heads of state, government officials, and domestic and foreign tourists.")))
                    ],
                  )

          ))
        ],
      ),
      bottomNavigationBar: Container(
        height: 120,
        padding: EdgeInsets.only(top: 30,bottom: 30,left: 20,right: 20),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20)
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
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
            Container(
              padding: EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
              child: BigText(text: "LKR 1500 | AddToCart",size: 18,color: Colors.white),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue
              )
            )
          ],
        ),
      ),
    );
  }
}
