import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common/cons/ResColor.dart';
import '../../../common/widget/TextView.dart';

class DashboardCoin extends StatelessWidget {
  const DashboardCoin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        balanceCoin(),
        transactionCoin()
      ],
    );
  }

  Widget balanceCoin(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12.0, 12, 12, 0),
          child: TextView().titleSmall(text: "Balance"),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12.0, 0, 12, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  TextView().titleBig("\$28,718.78"),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12.0, 0, 12, 0),
                    child: Container(
                        decoration: BoxDecoration(
                            color: ResColor.PRIMARY_COLOR,
                            borderRadius: BorderRadius.circular(45)),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                          child: TextView()
                              .textDefault(text: "+2,57%", textColor: Colors.white),
                        )),
                  ),
                ],
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(45)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                    child: Row(
                      children: [
                        TextView().textDefault(text: "USD"),
                        SizedBox(
                          width: 8,
                        ),
                        Image.asset("asset/icon/ic_chevron_down.png")
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ],
    );
  }

  Widget transactionCoin(){
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextView().textDefault(text: "Market Cap"),
                SizedBox(height: 12,),
                TextView().textDefault(text: "USD 374,707, 449", textColor: ResColor.BLACK)
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextView().textDefault(text: "Volume"),
                SizedBox(height: 12,),
                TextView().textDefault(text: "USD 15,707, 449", textColor: ResColor.BLACK)
              ],
            ),
          )
        ],
      ),
    );
  }
}
