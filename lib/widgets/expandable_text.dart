
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delievery/widgets/small_text.dart';

class ExpandableText extends StatefulWidget {

  final String text;
  const ExpandableText({Key? key,required this.text}) : super(key: key);

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {

  late String firstHalf;
  late String secondHalf;
  //late use bcz they will intialiize later
  bool hiddenText=true;

  double textheight=300;

  @override
  void initState(){
    super.initState();
    if(widget.text.length>textheight){
      firstHalf=widget.text.substring(0,textheight.toInt());
      secondHalf=widget.text.substring(textheight.toInt()+1,widget.text.length);
    }else{
      firstHalf=widget.text;
      secondHalf="";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty?SmallText(color:Colors.black54,size:16,text: firstHalf):Column(
        children: [
          SmallText(height:1.8,color:Colors.black54,size:16,text: hiddenText?(firstHalf+"...."):(firstHalf+secondHalf)),
          InkWell(
            onTap: (){
              setState(() {
                hiddenText=!hiddenText;
              });
            },
            child: Row(
              children: [
                SmallText(text: hiddenText?"Show More":"Show Less",color: Colors.blue,),
                Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up,color: Colors.blue,)
              ],
            ),
          )
        ],
      )
    );
  }
}
