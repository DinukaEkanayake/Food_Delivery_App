import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delievery/widgets/AppIcon.dart';
import 'package:food_delievery/widgets/big_text.dart';
import 'package:food_delievery/widgets/expandable_text.dart';

class RecommendedFoodDetail extends StatefulWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  State<RecommendedFoodDetail> createState() => _RecommendedFoodDetailState();
}

class _RecommendedFoodDetailState extends State<RecommendedFoodDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [  //special scrollingeffec
          SliverAppBar(
            toolbarHeight: 120,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),

            bottom: PreferredSize(
              preferredSize: Size.fromHeight(0),
              child: Container(
                child: Center(child: BigText(text: "Chineese Food")),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5,bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                ),
              ),
            ),

            pinned: true,
            backgroundColor: Colors.brown,
            expandedHeight: 400,
            flexibleSpace: FlexibleSpaceBar( //this is to background image and slowly disapearing when scrolling
              background: Image.asset(
                "assets/list1.jpg",
              width: double.maxFinite,
                fit: BoxFit.cover,
              )
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableText(text:"Beijing Roasted Duck Peking duck (北京烤鸭 Běijīng kǎoyā) is a famous dish from Beijing, enjoying world fame, and considered as one of China national dishes. Peking duck is savored for its thin and crispy skin. Sliced Peking duck is often eaten with pancakes, sweet bean sauce, or soy sauce with mashed garlic. It is a must-taste dish in Beijing! As “the first dish to taste in China”, Beijing Roast Duck used to be a royal dish in medieval China. It has been a “national dish of diplomacy” since the 1970s, when it was first used for the reception of foreign guests by Premier Zhou Enlai (the first Premier of the People's Republic of China). It is highly praised by heads of state, government officials, and domestic and foreign tourists.Beijing Roasted Duck Peking duck (北京烤鸭 Běijīng kǎoyā) is a famous dish from Beijing, enjoying world fame, and considered as one of China national dishes. Peking duck is savored for its thin and crispy skin. Sliced Peking duck is often eaten with pancakes, sweet bean sauce, or soy sauce with mashed garlic. It is a must-taste dish in Beijing! As “the first dish to taste in China”, Beijing Roast Duck used to be a royal dish in medieval China. It has been a “national dish of diplomacy” since the 1970s, when it was first used for the reception of foreign guests by Premier Zhou Enlai (the first Premier of the People's Republic of China). It is highly praised by heads of state, government officials, and domestic and foreign tourists.Beijing Roasted Duck Peking duck (北京烤鸭 Běijīng kǎoyā) is a famous dish from Beijing, enjoying world fame, and considered as one of China national dishes. Peking duck is savored for its thin and crispy skin. Sliced Peking duck is often eaten with pancakes, sweet bean sauce, or soy sauce with mashed garlic. It is a must-taste dish in Beijing! As “the first dish to taste in China”, Beijing Roast Duck used to be a royal dish in medieval China. It has been a “national dish of diplomacy” since the 1970s, when it was first used for the reception of foreign guests by Premier Zhou Enlai (the first Premier of the People's Republic of China). It is highly praised by heads of state, government officials, and domestic and foreign tourists."),
                  margin: EdgeInsets.only(left: 20,right: 20,top: 10),
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
            margin: EdgeInsets.only(),
            padding: EdgeInsets.only(left: 50,right: 50,top: 10,bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(size: 50,backgroundColor: Colors.blue,iconColor: Colors.white,icon: Icons.remove),
                BigText(text: "1000 LKR",color: Colors.black),
                AppIcon(size: 50,backgroundColor: Colors.blue,iconColor: Colors.white,icon: Icons.add),
              ],
            ),
          ),
          Container(
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
                    margin: EdgeInsets.only(left: 20),
                  padding: EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Container(
                    child: Icon(
                      Icons.favorite,
                      color: Colors.blue,
                    ),
                  )
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


        ],
      ),
    );
  }
}
