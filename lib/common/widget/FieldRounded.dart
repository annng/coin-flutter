import 'package:coin_wallet/common/widget/TextView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../cons/ResColor.dart';

class FieldRounded extends StatefulWidget {
  String title, hint;
  TextInputType inputType;

  FieldRounded(
      {required this.title,
      this.hint = "",
      this.inputType = TextInputType.text});

  @override
  State<FieldRounded> createState() => _FieldRoundedState();
}

class _FieldRoundedState extends State<FieldRounded> {
  bool _obsecureText = false;

  void showHideText() {
    setState(() {
      _obsecureText = !_obsecureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 24,
          ),
          TextView().titleLabel(text : widget.title),
          SizedBox(
            height: 8,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: ResColor.CONTAINER),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          filled: true,
                          fillColor: Colors.transparent,
                          hintText: widget.hint),
                      obscureText: _obsecureText,
                    ),
                  ),
                  if(widget.inputType == TextInputType.visiblePassword) ...[
                    GestureDetector(
                      child: _obsecureText ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                      onTap: () {
                        showHideText();
                      },
                    )
                  ]
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
