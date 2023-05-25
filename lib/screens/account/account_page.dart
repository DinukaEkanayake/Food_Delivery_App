import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delievery/widgets/AppIcon.dart';
import 'package:food_delievery/widgets/account_widget.dart';

import '../../widgets/big_text.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          leading: Padding(padding: EdgeInsets.only(top: 20),child:Icon(Icons.arrow_back)),
          title: Padding(padding: EdgeInsets.only(left: 110,top: 20),child:BigText(text: "Profile",size: 24,color: Colors.white)),
        ),
        body: Container(
          width: double.maxFinite,
          margin: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              AppIcon(icon: Icons.person,
              backgroundColor: Colors.blue,
              iconColor: Colors.white,
              iconSize: 75,
              size: 150,),
              SizedBox(height: 30,),
              Expanded(child: SingleChildScrollView(
                child: Column(
                  children: [
                    AccountWidget(appIcon: AppIcon(icon: Icons.person,
                      backgroundColor: Colors.blue,
                      iconColor: Colors.white,
                      iconSize: 30,
                      size: 40,), text: BigText(text: "Dinuka Ekanayake",)),
                    SizedBox(height: 30,),
                    AccountWidget(appIcon: AppIcon(icon: Icons.phone,
                      backgroundColor: Colors.blue,
                      iconColor: Colors.white,
                      iconSize: 30,
                      size: 40,), text: BigText(text: "0777525365",)),
                    SizedBox(height: 30,),
                    AccountWidget(appIcon: AppIcon(icon: Icons.email,
                      backgroundColor: Colors.blue,
                      iconColor: Colors.white,
                      iconSize: 30,
                      size: 40,), text: BigText(text: "dinukaekanayaka18@gmail.com",)),
                    SizedBox(height: 30,),
                    AccountWidget(appIcon: AppIcon(icon: Icons.location_on,
                      backgroundColor: Colors.blue,
                      iconColor: Colors.white,
                      iconSize: 30,
                      size: 40,), text: BigText(text: "kuliyapitiya road,pannala",)),
                    SizedBox(height: 30,),
                    AccountWidget(appIcon: AppIcon(icon: Icons.logout,
                      backgroundColor: Colors.red,
                      iconColor: Colors.white,
                      iconSize: 30,
                      size: 40,), text: BigText(text: "Logout",))
                  ],
                ),
              ))

            ],
          ),
        ),
        //bottomNavigationBar: MyNavigationBar(),
      ),
    );
  }
}
