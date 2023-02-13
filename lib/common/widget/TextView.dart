
import 'package:coin_wallet/common/cons/ResColor.dart';
import 'package:flutter/material.dart';

class TextView {

  Widget titleLabel({required String text, Color textColor = ResColor.BLACK}) {
    return Text(text, style: TextStyle(color: textColor, fontSize: 14,
        fontWeight: FontWeight.bold, letterSpacing: 1.1));
  }


  Widget titleBig(String text) {
      return Text(text, style: const TextStyle(color: ResColor.BLACK, fontSize: 32,
      fontWeight: FontWeight.bold));
    }

  Widget textDefault({required String text, Color textColor = ResColor.LIGHT_BLACK}) {
    return Text(text, style:  TextStyle(color: textColor, fontSize: 12,
        fontWeight: FontWeight.normal, letterSpacing: 1.1));
  }

  Widget textMedium({required String text, Color textColor = ResColor.LIGHT_BLACK}) {
    return Text(text, style:  TextStyle(color: textColor, fontSize: 14,
        fontWeight: FontWeight.normal, letterSpacing: 1.1));
  }

  Widget titleSmall({required String text, Color textColor = ResColor.LIGHT_BLACK}) {
    return Text(text, style:  TextStyle(color: textColor, fontSize: 14,
        fontWeight: FontWeight.normal));
  }
}