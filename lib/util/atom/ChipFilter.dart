import 'package:coin_wallet/common/cons/ResColor.dart';
import 'package:coin_wallet/common/widget/TextView.dart';
import 'package:flutter/cupertino.dart';

class ChipFilter extends StatelessWidget {
  final bool isSelected;
  final String title;
  ChipFilter({Key? key, this.isSelected = false, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? ResColor.BLACK : ResColor.GREY,
          borderRadius: BorderRadius.circular(60)
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: TextView().titleLabel(text: title, textColor: isSelected ? ResColor.WHITE : ResColor.LIGHT_BLACK),
        ),
      ),
    );
  }
}
