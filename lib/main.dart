import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_delievery/screens/account/account_page.dart';
import 'package:food_delievery/screens/authentication/registration_page.dart';
import 'package:food_delievery/screens/authentication/sign_in_page.dart';
import 'package:food_delievery/screens/food/popular_food_detail.dart';
import 'package:food_delievery/screens/food/recommended_food_detail.dart';
import 'package:food_delievery/screens/home/food_page_body.dart';
import 'package:food_delievery/screens/home/main_food_page.dart';
import 'helper/dependencies.dart' as dependencies;
Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await dependencies.init();
  runApp(
    DevicePreview(
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: //RecommendedFoodDetail(),
      //PopularFoodDetail(),
      //FoodPageBody()
      //MainFoodPage()
      //AccountPage()
      //SignInPage()
      SignupPage()
    );
  }
}



