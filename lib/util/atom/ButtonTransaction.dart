import 'package:coin_wallet/common/cons/ResColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../common/widget/TextView.dart';

class ButtonTransaction extends StatelessWidget {
  final String title;
  final String resIcon;
  final Color bgColor;
  final Function() onPressed;

  ButtonTransaction(
      {Key? key,
      required this.title,
      required this.resIcon,
      this.bgColor = ResColor.PRIMARY_COLOR,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              resIcon,
              width: 20,
              height: 20,
            ),
            SizedBox(
              width: 16,
            ),
            TextView().textMedium(text: title, textColor: ResColor.WHITE)
          ],
        ),
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0))),
        backgroundColor: MaterialStateProperty.resolveWith((states) => bgColor),
      ),
    );
  }
}
