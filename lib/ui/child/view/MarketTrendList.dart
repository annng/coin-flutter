import 'package:coin_wallet/common/widget/TextView.dart';
import 'package:coin_wallet/ui/coin/coin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/cons/ResColor.dart';

class MarketTrendView extends StatefulWidget {
  const MarketTrendView({Key? key}) : super(key: key);

  @override
  State<MarketTrendView> createState() => _MarketTrendViewState();
}

class _MarketTrendViewState extends State<MarketTrendView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: (){
            Get.to(() => CoinView());
          },
            child: itemMarket(index)
        ));
  }

  Widget itemMarket(int index){
    var isDown = index % 2 == 0;
    var isBit = index % 2 == 0;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(isBit ? "asset/icon/ic_crypto_btc.png" : "asset/icon/ic_crypto_eth.png", width: 40, height: 40, fit: BoxFit.cover,),
          SizedBox(width: 16,),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextView().titleMedium("BTC"),
                SizedBox(height: 8,),
                TextView().textDefault(text: "18M Bitcoin")
              ],
            ),
          ),
          SizedBox(width: 8,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextView().titleMedium("USD 41,881.17"),
              SizedBox(height: 4,),
              Chip(
                label: TextView().textDefault(text: "+0.44%", textColor: ResColor.TEXT_CHIP),
                backgroundColor: isDown ? ResColor.BG_CHIP_DOWN : ResColor.BG_CHIP_UP,
              )
            ],
          )
        ],
      ),
    );
  }
}
