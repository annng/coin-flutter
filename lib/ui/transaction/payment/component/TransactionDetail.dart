import 'package:coin_wallet/common/widget/TextView.dart';
import 'package:coin_wallet/util/molecule/SelectionCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../common/cons/ResColor.dart';


class TransactionDetail extends StatelessWidget {
  int totalPay;
  TransactionDetail({Key? key, required this.totalPay}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0),
          child: TextView().textMedium(text: "Transaction Detail", textColor: ResColor.BLACK, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16,),
        invoice(),
        SizedBox(height: 32,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0),
          child: TextView().textMedium(text: "Payment Method", textColor: ResColor.BLACK, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8.0, 16, 8),
          child: SelectionCard(resAsset: "asset/img/img_mastercard.png", title: "**** **** **** 9066", info: "Mastercard"),
        )
      ],
    );
  }

  Widget invoice(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          TextView().RowInvoice(title: "Date", value: "14 April 2023"),
          TextView().RowInvoice(title: "Fee", value: "\$10.00"),
          SizedBox(height: 8,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Divider(height: 1, color: ResColor.LIGHT_BLACK,),
          ),
          SizedBox(height: 8,),
          TextView().RowInvoice(title: "Total", value: "\$${totalPay+10}.00", isBold: true)
        ],
      ),
    );
  }
}
