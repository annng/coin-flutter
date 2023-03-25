import 'package:flutter/cupertino.dart';

import '../../common/cons/ResColor.dart';

class CircleIcon extends StatelessWidget {
  Color resColor;
  String imgAsset;
  double size;
  CircleIcon({Key? key, this.resColor = ResColor.BLACK, required this.imgAsset, this.size = 64}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(color: resColor, shape: BoxShape.circle),
      child: Image.asset(
        imgAsset,
        width: 27,
        height: 27,
      ),
    );
  }
}
