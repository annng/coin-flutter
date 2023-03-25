import 'package:coin_wallet/common/cons/ResColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../common/widget/TextView.dart';

class ButtonPositive extends StatelessWidget {
  final String title;
  final String? resIcon;
  final Color bgColor;
  final Function() onPressed;

  ButtonPositive(
      {Key? key,
      required this.title,
      this.resIcon,
      this.bgColor = ResColor.PRIMARY_COLOR,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0))),
        backgroundColor: MaterialStateProperty.resolveWith((states) => bgColor),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 16,
            ),
            TextView().textMedium(text: title, textColor: ResColor.WHITE),
            resIcon != null ? Image.asset(
              resIcon!,
              width: 20,
              height: 20,
            ) : Container(),
          ],
        ),
      ),
    );
  }
}
