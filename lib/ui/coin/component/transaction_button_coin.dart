import 'package:coin_wallet/util/atom/ButtonTransaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/cons/ResColor.dart';

class TransactionButtonCoin extends StatelessWidget {
  const TransactionButtonCoin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(width: 16,),
        Expanded(
          child: ButtonTransaction(title: "Buy", resIcon: "asset/icon/ic_deposit.png", onPressed: (){
            Get.snackbar("buy", "clicked");
          }),
        ),
        SizedBox(width: 16,),
        Expanded(
          child: ButtonTransaction(title: "Sell", resIcon: "asset/icon/ic_withdraw.png", bgColor: ResColor.BLACK, onPressed: (){
            Get.snackbar("sell", "clicked");
          }),
        ),
        SizedBox(width: 16,),
      ],
    );
  }
}
