import 'package:coin_wallet/ui/transaction/success/PaymentSuccessView.dart';
import 'package:coin_wallet/util/atom/ButtonPositive.dart';
import 'package:coin_wallet/util/molecule/toolbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'component/AmountInfo.dart';
import 'component/TransactionDetail.dart';

class PaymentTransactionView extends StatefulWidget {
  int amountPay;
  double amountCoin;
  PaymentTransactionView({Key? key, required this.amountPay, required this.amountCoin}) : super(key: key);

  @override
  State<PaymentTransactionView> createState() => _PaymentTransactionViewState();
}

class _PaymentTransactionViewState extends State<PaymentTransactionView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Toolbar(title: "Transaction", onBackPressed: (){
              Get.back();
            },),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: AmountInfo(amountPay: widget.amountPay, amountReceive: widget.amountCoin),
                ),
                TransactionDetail(totalPay: widget.amountPay,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  child: ButtonPositive(title: "Confirm to pay", onPressed: (){
                    Get.to(() => PaymentSuccessView(totalAmount: widget.amountPay+10, coinReceive: widget.amountCoin));
                  }),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
