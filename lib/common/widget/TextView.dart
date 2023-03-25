
import 'package:coin_wallet/common/cons/ResColor.dart';
import 'package:flutter/material.dart';

class TextView {

  Widget titleLabel({required String text, Color textColor = ResColor.BLACK}) {
    return Text(text, style: TextStyle(color: textColor, fontSize: 14,
        fontWeight: FontWeight.bold, letterSpacing: 1.1));
  }

  Widget titleMedium(String text, {Color textColor = ResColor.BLACK}) {
    return Text(text, style: TextStyle(color: textColor, fontSize: 18,
        fontWeight: FontWeight.bold));
  }

  Widget titleBig(String text,  {Color textColor = ResColor.BLACK}) {
      return Text(text, style: TextStyle(color: textColor, fontSize: 32,
      fontWeight: FontWeight.bold));
    }

  Widget textDefault({required String text, Color textColor = ResColor.LIGHT_BLACK}) {
    return Text(text, style:  TextStyle(color: textColor, fontSize: 12,
        fontWeight: FontWeight.normal, letterSpacing: 1.1));
  }

  Widget textMedium({required String text, Color textColor = ResColor.LIGHT_BLACK, FontWeight fontWeight = FontWeight.normal }) {
    return Text(text, style:  TextStyle(color: textColor, fontSize: 14,
        fontWeight: fontWeight, letterSpacing: 1.1));
  }

  Widget titleSmall({required String text, Color textColor = ResColor.LIGHT_BLACK}) {
    return Text(text, style:  TextStyle(color: textColor, fontSize: 14,
        fontWeight: FontWeight.normal));
  }

  Widget RowInvoice({String title = "", String value = '', bool isBold = false}){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextView().textMedium(text: title, textColor: ResColor.LIGHT_BLACK),
          TextView().textMedium(text: value, fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
        ],
      ),
    );
  }
}