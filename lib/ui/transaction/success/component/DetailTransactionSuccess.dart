import 'package:coin_wallet/util/atom/DashDivider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../common/widget/TextView.dart';

class DetailTransactionSuccess extends StatelessWidget {
  const DetailTransactionSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 60),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
              child: Column(
                children: [
                  TextView().RowInvoice(title: "Coin",value: "Ethereum (ETH)", isBold: false),
                  TextView().RowInvoice(title: "Coin Rate",value: "\$110.00\/1eth", isBold: false),
                  TextView().RowInvoice(title: "Date",value: "14 April 2023", isBold: false),
                  TextView().RowInvoice(title: "Fee",value: "\$10.00", isBold: false),
                  SizedBox(height: 16,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: DashSeparator(),
                  ),
                  SizedBox(height: 16,),
                  TextView().RowInvoice(title: "Total",value: "\$110.00", isBold: true),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          left: 0,
            top: 30,
            height: 66,
            child: Image.asset("asset/icon/ic_ethereum_circle.png"))
      ],
    );
  }
}
