import 'package:coin_wallet/common/cons/ResColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common/widget/TextView.dart';

class HorizontalCoinList extends StatefulWidget {
  List<String> coins = [];

  HorizontalCoinList({required this.coins});

  @override
  State<HorizontalCoinList> createState() => _HorizontalCoinListState();
}

class _HorizontalCoinListState extends State<HorizontalCoinList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: widget.coins.length,
        itemBuilder: (BuildContext context, int index) => itemCoin(index));
  }

  Widget itemCoin(int index) {
    var isDown = index % 2 == 0;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 2/3,
        decoration: BoxDecoration(
          color: ResColor.GREY,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color : ResColor.DARK_GREY, width: 1)
        ),
        child: Stack(
          children: [
            Positioned.fill(
              top: 0,
                left: 0,
                right: MediaQuery.of(context).size.width * 2/3 / 2.8,
                child: Image.asset("asset/img/bitcoin.png", fit: BoxFit.cover)),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextView().titleLabel(text: widget.coins[index]),
                          SizedBox(
                            height: 8,
                          ),
                          TextView().textDefault(text: "BTC"),
                        ],
                      ),
                      Icon(Icons.more_vert_sharp, color: ResColor.DARK_GREY, size: 36,)
                    ],
                  ),
                  SizedBox(
                    height: 48,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextView().titleMedium("USD 10,678"),
                      Image.asset(isDown ? "asset/img/img_stock_down.png" : "asset/img/img_stock_up.png")
                    ],
                  ),
                  Chip(
                    label: TextView().textDefault(text: "+0.44%", textColor: ResColor.TEXT_CHIP),
                    backgroundColor: isDown ? ResColor.BG_CHIP_DOWN : ResColor.BG_CHIP_UP,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
