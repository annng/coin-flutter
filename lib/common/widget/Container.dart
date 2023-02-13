import 'package:flutter/cupertino.dart';

import '../cons/ResColor.dart';

class Content {
  Widget slideUpLine() {
    return Container(width: 44, height: 4,
      decoration: BoxDecoration(
          color: ResColor.GREY,
          borderRadius: BorderRadius.circular(8)
      ),);
  }
}