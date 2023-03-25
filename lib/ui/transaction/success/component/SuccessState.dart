import 'package:coin_wallet/common/widget/TextView.dart';
import 'package:flutter/cupertino.dart';

import '../../../../common/cons/ResColor.dart';

class SuccessState extends StatelessWidget {
  final double coinReceive;
  const SuccessState({Key? key, required this.coinReceive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16,),
        Image.asset("asset/img/img_success_transaction.png", width: 100,),
        SizedBox(height: 16,),
        TextView().textMedium(text: "Payment Successful", textColor: ResColor.WHITE),
        SizedBox(height: 16,),
        TextView().titleBig("${coinReceive}ETH", textColor: ResColor.WHITE)
      ],
    );
  }
}
