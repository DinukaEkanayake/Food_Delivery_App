import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delievery/widgets/AppIcon.dart';
import 'package:food_delievery/widgets/big_text.dart';

class AccountWidget extends StatelessWidget {
  AppIcon appIcon;
  BigText text;

  AccountWidget({Key? key,required this.appIcon,required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 10,left: 20,bottom: 10),
        child: Row(
          children: [
            appIcon,
            SizedBox(width: 20,),
            text
          ],
        ),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow:[ BoxShadow(
            blurRadius: 1,
          offset: Offset(0, 2),
        color: Colors.grey.withOpacity(0.2)
      )
    ]

      )
    );
  }
}
