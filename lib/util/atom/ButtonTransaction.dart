import 'package:coin_wallet/common/cons/ResColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../common/widget/TextView.dart';

class ButtonTransaction extends StatelessWidget {
  final String title;
  final String resIcon;
  final Color bgColor;
  final Function() onPressed;
  ButtonTransaction({Key? key, required this.title, required this.resIcon, this.bgColor = ResColor.PRIMARY_COLOR, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      onPressed();
    }, child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(resIcon),
        SizedBox(width: 16,),
        TextView().textDefault(text: title, textColor: ResColor.WHITE)
      ],
    ),
    style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states) => bgColor)),);
  }
}
