import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delievery/widgets/big_text.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailcontroller =TextEditingController();
    var passwordcontroller =TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
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
            margin: EdgeInsets.only(left: 20),
            child: Text(
              "Hello",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),
            ),
          ),
          RichText(text: TextSpan(
              recognizer: TapGestureRecognizer()..onTap=()=>Get.back(),
              text: "Welcome to FastFood",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20
              )
          )),
          SizedBox(height: 10,),
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
          SizedBox(height: 30,),
          Container(
            width: 180,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue
            ),
            child: Center(
              child: BigText(text: "SignIn",size: 30,color: Colors.white,),
            ),
          ),
          SizedBox(height: 20,),
          RichText(text: TextSpan(
              recognizer: TapGestureRecognizer()..onTap=()=>Get.back(),
              text: "OR",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20
              )
          )),
          SizedBox(height: 20,),
          Container(
            width: 300,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white
            ),
            child: Center(
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Icon(Icons.facebook,color: Colors.blue,),
                  SizedBox(width: 20,),
                  BigText(text: "Log In With Facebook",size: 20,color: Colors.black,)
                ],
              ),
            ),
          ),
          SizedBox(height: 30,),
          RichText(text: TextSpan(
              recognizer: TapGestureRecognizer()..onTap=()=>Get.back(),
              text: "Dont Have An Account?Signup Here",
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


