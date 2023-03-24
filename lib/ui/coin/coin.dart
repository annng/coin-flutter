import 'package:coin_wallet/ui/coin/component/dashboard_coin.dart';
import 'package:coin_wallet/util/atom/actionImage.dart';
import 'package:coin_wallet/util/molecule/toolbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/cons/ResColor.dart';
import '../../common/widget/TextView.dart';
import 'component/graph_coin.dart';
import 'component/history_transaction_coin.dart';
import 'component/transaction_button_coin.dart';

class CoinView extends StatefulWidget {
  const CoinView({Key? key}) : super(key: key);

  @override
  State<CoinView> createState() => _CoinViewState();
}

class _CoinViewState extends State<CoinView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Toolbar(
            title: "Ethereum",
            onBackPressed: () {
              Get.back();
            },
            actions: [
              ActionImageView(
                res: "asset/icon/ic_more.png",
                onPressed: () {
                  Get.snackbar("action", "Clicked");
                },
              )
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  Positioned(top: 0, right: 0, child: Image.asset("asset/img/bg_ethereum.png", fit: BoxFit.cover,)),
                  Column(
                    children: [
                      DashboardCoin(),
                      GraphCoinView(),
                      TransactionButtonCoin(),
                      HistoryTransactionCoin()
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
