import 'package:coin_wallet/common/widget/TextView.dart';
import 'package:coin_wallet/util/atom/ButtonPositive.dart';
import 'package:coin_wallet/util/atom/ButtonTransaction.dart';
import 'package:coin_wallet/util/molecule/SelectionCard.dart';
import 'package:coin_wallet/util/molecule/numpad.dart';
import 'package:coin_wallet/util/molecule/toolbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../payment/PaymentTransaction.dart';

class InputTransactionCoin extends StatefulWidget {
  const InputTransactionCoin({Key? key}) : super(key: key);

  @override
  State<InputTransactionCoin> createState() => _InputTransactionCoinState();
}

class _InputTransactionCoinState extends State<InputTransactionCoin> {
  double amountEth = 0.0092;
  String inputValue = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Toolbar(title: "Transaction", onBackPressed: (){
              Get.back();
            },),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16,8, 16, 8),
                      child: SelectionCard(resAsset: "asset/icon/ic_ethereum.png", title: "Ethereum", info: "ETH"),
                    ),
                    amountInput(),
                    NumPad(onTap: (number){
                      setState(() {
                        if(number == 99){
                          if(inputValue.length == 1){
                            inputValue = "0";
                          }else{
                            inputValue = inputValue.substring(0, inputValue.length-1);
                          }
                        }else{
                          if(inputValue == "0"){
                            inputValue = "$number";
                          }else {
                            inputValue += "$number";
                          }
                        }
                      });
                    }),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: ButtonPositive(title: "Continue", onPressed: (){
                          Get.to(() => PaymentTransactionView(amountPay: int.parse(inputValue), amountCoin: int.parse(inputValue)*amountEth,));
                      }),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget amountInput(){
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(32.0, 8, 32, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextView().textMedium(text: "Amount"),
            SizedBox(height: 8,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextView().titleBig("\$$inputValue,00"),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,0,0,8),
                  child: TextView().textDefault(text: "${(int.parse(inputValue)*amountEth).toStringAsFixed(4)}ETH"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
