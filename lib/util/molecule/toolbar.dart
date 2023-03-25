import 'package:coin_wallet/common/widget/TextView.dart';
import 'package:coin_wallet/util/atom/actionImage.dart';
import 'package:flutter/cupertino.dart';

class Toolbar extends StatelessWidget {
  Function()? onBackPressed;
  Function()? onClose;
  String title;
  List<Widget>? actions;

  Toolbar({Key? key, this.onClose, this.onBackPressed, required this.title, this.actions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 40, 16, 0),
      child: Stack(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if(onBackPressed != null)...[ActionImageView(onPressed: onBackPressed, res: "asset/icon/ic_back.png")],
            if(onClose != null)...[ActionImageView(onPressed: onClose, res: "asset/icon/ic_close.png")],
            Row(
              children: actions ?? [Container()],
            )
          ],
        ),
        Positioned.fill(
            child: Align(
                alignment: Alignment.center, child: TextView().titleMedium(title))),
      ]),
    );
  }
}
