import 'package:coin_wallet/common/cons/ResColor.dart';
import 'package:coin_wallet/ui/home.dart';
import 'package:coin_wallet/ui/transaction/success/component/DetailTransactionSuccess.dart';
import 'package:coin_wallet/util/atom/ButtonPositive.dart';
import 'package:coin_wallet/util/molecule/toolbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../util/atom/actionImage.dart';
import 'component/SuccessState.dart';

class PaymentSuccessView extends StatefulWidget {
  int totalAmount;
  double coinReceive;
  PaymentSuccessView({Key? key, required this.totalAmount, required this.coinReceive}) : super(key: key);

  @override
  State<PaymentSuccessView> createState() => _PaymentSuccessViewState();
}

class _PaymentSuccessViewState extends State<PaymentSuccessView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 2/3.5,
              width: double.infinity,
              color: ResColor.PRIMARY_COLOR,
            ),
          ),
          Positioned.fill(
            child: Column(
              children: [
                Toolbar(title: "", onClose: (){
                  Get.back();
                }, actions: [
                  ActionImageView(onPressed: (){}, res: "asset/icon/ic_upload.png",)
                ],),
                SuccessState(coinReceive: widget.coinReceive),
                DetailTransactionSuccess()
              ],
            ),
          ),
          Positioned(
            bottom: 48,
              left: 28,
              right: 28,
              child: ButtonPositive(title: "Back to home", onPressed: (){
            Get.offAll(() => HomePage());
          }))
        ],
      ),
    );
  }
}
