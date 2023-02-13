import 'package:flutter/cupertino.dart';

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
      itemBuilder: (BuildContext  context, int index) =>
        Container()
    );
  }
}
