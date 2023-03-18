import 'package:flutter/cupertino.dart';
import 'package:coin_wallet/common/widget/TextView.dart';
import 'package:coin_wallet/ui/signin.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../common/cons/ResColor.dart';

class OnBoardView extends StatefulWidget {
  const OnBoardView({Key? key}) : super(key: key);

  @override
  State<OnBoardView> createState() => _OnBoardViewState();
}

class _OnBoardViewState extends State<OnBoardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
            children: [
              SizedBox(
                height: 62,
              ),
              Expanded(
                child: Stack(
                  children: [
                    Image.asset("asset/img/bg_login.png",
                        width: double.infinity,
                        fit: BoxFit.fill,
                        //make height as half of screen height
                        height: MediaQuery.of(context).size.height / 2),
                    Positioned.fill(
                      //create space to half of screen height
                      top: (MediaQuery.of(context).size.height / 2) - 48,
                      child: Container(
                        width: double.infinity,
                        height: double.infinity / 2,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24),
                                topRight: Radius.circular(24))),
                        child: Padding(
                          padding: const EdgeInsets.all(24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 16),
                              TextView().titleBig(
                                  "Track your coin\nwith the easiest\nway"),
                              SizedBox(
                                height: 16,
                              ),
                              SizedBox(
                                  width: 256,
                                  child: TextView().textDefault(
                                      text: "Have you ever found it very difficult to manage your crypto? now you don't have to worry")),
                              SizedBox(height: 32),
                              SizedBox(
                                width: 132,
                                child: ElevatedButton(
                                  onPressed: () => {
                                    Get.to(const SignInPage())
                                  },
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(16)
                                      ),
                                      minimumSize: Size(132, 52),
                                      primary: ResColor.BLACK), child:
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    TextView().textDefault(text: "Sign in", textColor: ResColor.CONTAINER),
                                    SizedBox(width: 16),
                                    Image.asset("asset/icon/ic_nav_signin.png", width: 28,)
                                  ],
                                ),
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Text.rich(
                                  TextSpan(
                                      text: "Don’t have account? ",
                                      style: const TextStyle(color: ResColor.LIGHT_BLACK),
                                      children: <InlineSpan>[
                                        TextSpan(
                                            text: "Register",
                                            style: const TextStyle(color: ResColor.BLACK, fontWeight: FontWeight.bold),
                                            recognizer: TapGestureRecognizer()..onTap = () => {
                                              //todo action
                                            }
                                        )
                                      ]
                                  )
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
