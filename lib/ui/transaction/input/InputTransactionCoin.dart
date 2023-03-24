import 'package:coin_wallet/util/molecule/numpad.dart';
import 'package:coin_wallet/util/molecule/toolbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputTransactionCoin extends StatefulWidget {
  const InputTransactionCoin({Key? key}) : super(key: key);

  @override
  State<InputTransactionCoin> createState() => _InputTransactionCoinState();
}

class _InputTransactionCoinState extends State<InputTransactionCoin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Toolbar(title: "Transaction", onBackPressed: (){
            Get.back();
          },),
          Expanded(
            child: NumPad(onTap: (number){

            }),
          )
        ],
      ),
    );
  }
}
