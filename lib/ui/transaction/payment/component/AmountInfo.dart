import 'package:coin_wallet/common/widget/TextView.dart';
import 'package:coin_wallet/util/atom/CircleIcon.dart';
import 'package:coin_wallet/util/atom/DashDivider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../common/cons/ResColor.dart';

class AmountInfo extends StatelessWidget {
  final int amountPay;
  final double amountReceive;

  const AmountInfo(
      {Key? key, required this.amountPay, required this.amountReceive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextView().textMedium(text: "You Pay"),
                    SizedBox(
                      height: 8,
                    ),
                    TextView().titleMedium("\$${amountPay},00"),
                    SizedBox(
                      height: 16,
                    ),
                    DashSeparator(),
                    SizedBox(
                      height: 16,
                    ),
                    TextView().textMedium(text: "You Receive"),
                    SizedBox(
                      height: 8,
                    ),
                    TextView().titleMedium("${amountReceive}ETH"),
                  ],
                ),
              ),
            ),
            SizedBox(width: 8),
            CircleIcon(
              imgAsset: "asset/icon/ic_transaction.png",
              resColor: ResColor.PRIMARY_COLOR,
              size: 48,
            )
          ],
        ),
      ),
    );
  }
}
