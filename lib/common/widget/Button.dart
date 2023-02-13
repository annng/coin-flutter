import 'package:coin_wallet/common/widget/TextView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../cons/ResColor.dart';

class Button extends StatefulWidget {
  String title;
  String? icon;
  Color bgColor, textColor;
  Function() onClick;

  Button(
      {required this.title,
      this.icon = null,
      this.bgColor = ResColor.PRIMARY_COLOR,
      this.textColor = Colors.white,
      required this.onClick});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16,),
        GestureDetector(
          onTap: widget.onClick,
          child: Container(
            height: 56,
            decoration: BoxDecoration(
              color: widget.bgColor,
              borderRadius: BorderRadius.circular(16)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if(widget.icon != null)...[
                    Image.asset(widget.icon!, width: 22, height: 22),
                    SizedBox(width: 8,)
                ],
                TextView().titleLabel(text: widget.title, textColor: widget.textColor)
              ],
            ),
          ),
        ),
        SizedBox(height: 16,),
      ],
    );
  }
}
