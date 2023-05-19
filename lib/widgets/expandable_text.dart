import 'dart:html';

import 'package:flutter/cupertino.dart';

class ExpandableText extends StatefulWidget {

  final String text;
  const ExpandableText({Key? key,required this.text}) : super(key: key);

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {

  late String firstHalf;
  late String secondHalf;
  bool hiddenText=true;

  double textheight=50;

  @override
  void initState(){
    super.initState();
    if(widget.text.length>textheight){
      firstHalf=widget.text.substring(0,textheight.toInt());
      secondHalf=widget.text.substring(textheight.toInt(),widget.text.length);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
