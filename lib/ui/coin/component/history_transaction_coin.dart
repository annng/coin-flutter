import 'package:coin_wallet/common/widget/TextView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common/cons/ResColor.dart';

class HistoryTransactionCoin extends StatefulWidget {
  const HistoryTransactionCoin({Key? key}) : super(key: key);

  @override
  State<HistoryTransactionCoin> createState() => _HistoryTransactionCoinState();
}

class _HistoryTransactionCoinState extends State<HistoryTransactionCoin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            child: TextView().titleMedium("Last Transaction"),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (BuildContext _, int index) {
              return cardTransaction(index);
            },
          )
        ],
      ),
    );
  }

  Widget cardTransaction(int index) {
    bool isDeposit = index % 2 == 0;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                    color: isDeposit ? ResColor.PRIMARY_COLOR : ResColor.PINK,
                    shape: BoxShape.circle),
                child: Image.asset(
                  isDeposit
                      ? "asset/icon/ic_deposit.png"
                      : "asset/icon/ic_withdraw.png",
                  width: 24,
                  height: 24,
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextView().textDefault(
                        text: "14 Apr 2023", textColor: ResColor.LIGHT_BLACK),
                    SizedBox(
                      height: 8,
                    ),
                    TextView()
                        .textMedium(text: "2.43 Eth", textColor: ResColor.BLACK)
                  ],
                ),
              ),
              SizedBox(
                width: 16,
              ),
              TextView().titleMedium("\$14")
            ],
          ),
        ),
      ),
    );
  }
}
