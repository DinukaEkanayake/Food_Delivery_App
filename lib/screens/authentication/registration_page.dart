import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delievery/widgets/big_text.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailcontroller =TextEditingController();
    var passwordcontroller =TextEditingController();
    var namecontroller =TextEditingController();
    var phonecontroller =TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 70),
          Container(
            height: 300,
            child: Center(
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage(
                  "assets/img.png"
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20,right: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 7,
                  offset: Offset(1, 10),
                  color: Colors.grey.withOpacity(0.2)
                )
              ]
            ),
            child: TextField(
              controller: emailcontroller,
              decoration: InputDecoration(
                hintText: "Email",
                prefixIcon: Icon(Icons.email,color: Colors.blue,),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    width: 1.0,
                    color: Colors.white
                  )
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                        width: 1.0,
                        color: Colors.white
                    )
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 20,right: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 7,
                      offset: Offset(1, 10),
                      color: Colors.grey.withOpacity(0.2)
                  )
                ]
            ),
            child: TextField(
              obscureText: true,
              controller: passwordcontroller,
              decoration: InputDecoration(
                hintText: "Password",
                prefixIcon: Icon(Icons.password,color: Colors.blue,),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                        width: 1.0,
                        color: Colors.white
                    )
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                        width: 1.0,
                        color: Colors.white
                    )
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 20,right: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 7,
                      offset: Offset(1, 10),
                      color: Colors.grey.withOpacity(0.2)
                  )
                ]
            ),
            child: TextField(
              controller: namecontroller,
              decoration: InputDecoration(
                hintText: "Name",
                prefixIcon: Icon(Icons.person,color: Colors.blue,),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                        width: 1.0,
                        color: Colors.white
                    )
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                        width: 1.0,
                        color: Colors.white
                    )
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 20,right: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 7,
                      offset: Offset(1, 10),
                      color: Colors.grey.withOpacity(0.2)
                  )
                ]
            ),
            child: TextField(
              controller: phonecontroller,
              decoration: InputDecoration(
                hintText: "Phone",
                prefixIcon: Icon(Icons.phone,color: Colors.blue,),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                        width: 1.0,
                        color: Colors.white
                    )
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                        width: 1.0,
                        color: Colors.white
                    )
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Container(
            width: 180,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.blue
            ),
            child: Center(
              child: BigText(text: "Sign Up",size: 30,color: Colors.white,),
            ),
          ),
          SizedBox(height: 10,),
          RichText(text: TextSpan(
            recognizer: TapGestureRecognizer()..onTap=()=>Get.back(),
            text: "Already HAve An Account?",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20
            )
          ))

        ],
      ),
    );
  }
}

