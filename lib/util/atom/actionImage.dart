import 'package:flutter/cupertino.dart';

import '../../common/cons/ResColor.dart';

class ActionImageView extends StatelessWidget {
  Function()? onPressed;
  String res;
  ActionImageView({Key? key, this.onPressed, required this.res}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return onPressed != null ? GestureDetector(
      onTap: onPressed,
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 40,
            height: 40,
            decoration:
                BoxDecoration(color: ResColor.DARK_GREY, shape: BoxShape.circle),
            child: Image.asset(
              res,
              width: 20,
              height: 20,
            ),
          )),
    ) : Container();
  }
}
