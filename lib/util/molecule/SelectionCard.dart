import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../common/widget/TextView.dart';

class SelectionCard extends StatelessWidget {
  String resAsset;
  String title;
  String info;

  SelectionCard(
      {Key? key,
      required this.resAsset,
      required this.title,
      required this.info})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          //set border radius more than 50% of height and width to make circle
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Image.asset(
                resAsset,
                width: 36,
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
                    TextView().titleMedium(title),
                    SizedBox(
                      height: 8,
                    ),
                    TextView().textMedium(text: info)
                  ],
                ),
              ),
              Image.asset("asset/icon/ic_chevron_down_big.png")
            ],
          ),
        ));
  }
}
