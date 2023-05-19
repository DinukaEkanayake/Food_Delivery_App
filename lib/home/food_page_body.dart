import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delievery/widgets/big_text.dart';
import 'package:food_delievery/widgets/icon_and_text_widget.dart';
import 'package:food_delievery/widgets/small_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {

  PageController pageController=PageController(viewportFraction: 0.85);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[ Container(
        //color: Colors.red,
        height: 320,
        child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context,position){
              return _buildPageItem(position);
          }),
      ),
                  new DotsIndicator(
                  dotsCount: 5,
                  position: 0,//currpgevalue
                  decorator: DotsDecorator(
                  size: const Size.square(9.0),
                  activeSize: const Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
    ),
                 SizedBox(height: 30),
        Container(
          margin: EdgeInsets.only(left: 30),
          child: Row(
            children: [
              BigText(text: "Popular"),
              SizedBox(width: 10),
              Container(
                child: SmallText(text: "Food Pairing"),
              )
            ],
          ),
        ),
        //list of food and images
        Container(
          height: 900,
          child: ListView.builder(
              //physics: NeverScrollableScrollPhysics(),
              //shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context,index){

                return Container(
                  margin: EdgeInsets.only(left: 20,right: 20,bottom: 10),
                  child: Row(
                    children: [
                      //image section
                      Container(
                        width:120,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/list1.jpg"
                              )
                          )
                        ),
                      ),
                      //text section
                      Expanded(
                        child: Container(
                          height:100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white54,
                          ),
                          child: Padding(padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BigText(text: "Nutritious Food"),
                                SizedBox(height: 10),
                                SmallText(text: "with chineese flavours"),
                                SizedBox(height: 10),
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

                          ),

                        ),
                      ),
                    ],
                  ),
                );
    }),
        )
    ],
    );
  }

  Widget _buildPageItem(int index){
    return Stack(
        children: [
          Container(
            height: 220,
            margin: EdgeInsets.only(left: 5,right: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFF69c5df),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        "assets/food1.jpg"
                    )
                )
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 140,
              margin: EdgeInsets.only(left: 40,right: 40,bottom: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 5)
                    )
                  ]
              ),
              child: Container(
                padding: EdgeInsets.only(top: 10,left: 15,right: 15),
                child: Column(
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
              ),
            ),
          )

        ],
    );
  }

}
