import 'package:coin_wallet/common/widget/Container.dart';
import 'package:coin_wallet/common/widget/TextView.dart';
import 'package:coin_wallet/dummy/Coin.dart';
import 'package:coin_wallet/ui/child/component/HorizontalListCoin.dart';
import 'package:coin_wallet/ui/child/component/MarketTrendList.dart';
import 'package:coin_wallet/util/atom/CircleIcon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../common/cons/ResColor.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 12, 12, 0),
            child: Row(
              children: [
                TextView().titleSmall(text: "Your Balance"),
                SizedBox(
                  width: 8,
                ),
                Image.asset(
                  "asset/icon/ic_navigate_right.png",
                  width: 20,
                  height: 20,
                )
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 0, 12, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextView().titleBig("\$28,718.78"),
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
          SizedBox(
            height: 8,
          ),
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
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 12, 12, 12),
            child: Row(
              children: [
                Image.asset("asset/img/img_chart.png",
                    width: MediaQuery.of(context).size.width / 2),
                SizedBox(
                  width: 16,
                ),
                Column(
                  children: [
                    Container(
                      width: 64,
                      height: 64,
                      decoration: BoxDecoration(
                          color: ResColor.PRIMARY_COLOR,
                          shape: BoxShape.circle),
                      child: Image.asset(
                        "asset/icon/ic_deposit.png",
                        width: 27,
                        height: 27,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextView().textDefault(text: "Deposit")
                  ],
                ),
                SizedBox(
                  width: 16,
                ),
                Column(
                  children: [
                    CircleIcon(imgAsset: "asset/icon/ic_withdraw.png"),
                    SizedBox(
                      height: 16,
                    ),
                    TextView().textDefault(text: "Withdraw")
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          contentDashboard(),
        ],
      ),
    );
  }

  Widget contentDashboard() {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24))),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 4, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 8,
            ),
            Align(alignment: Alignment.center, child: Content().slideUpLine()),
            SizedBox(
              height: 16,
            ),
            TextView().titleLabel(text: "Your asset"),
            SizedBox(
                height: 215,
                width: MediaQuery.of(context).size.width,
                child: HorizontalCoinList(coins: DummyCoin().coins)),
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: TextView().titleLabel(text: "Market Share")),
                      Row(
                        children: [
                          TextView().textDefault(text: "24h"),
                          SizedBox(
                            width: 8,
                          ),
                          Image.asset("asset/icon/ic_sort.png")
                        ],
                      )
                    ],
                  ),
                  MarketTrendView()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
