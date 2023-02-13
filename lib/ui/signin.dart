import 'package:coin_wallet/common/cons/ResColor.dart';
import 'package:coin_wallet/ui/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../common/widget/Button.dart';
import '../common/widget/FieldRounded.dart';
import '../common/widget/TextView.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: Container(
          child: Column(children: [
        SizedBox(
          height: 62,
        ),
        Expanded(
            child: Stack(children: [
          Image.asset("asset/img/bg_login.png",
              width: double.infinity,
              fit: BoxFit.fill,
              //make height as half of screen height
              height: MediaQuery.of(context).size.height / 2),
          Positioned.fill(
              //create space to half of screen height
              top: 30,
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
                            TextView().titleBig("Sign in"),
                            SizedBox(
                              height: 16,
                            ),
                            FieldRounded(
                              title: "Email",
                              hint: "Enter your Email",
                            ),
                            FieldRounded(
                              title: "Password",
                              hint: "Enter your Password",
                              inputType: TextInputType.visiblePassword,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                onTap: () {
                                  Get.snackbar(
                                      "Clicked", "You click forgot password");
                                },
                                child: Text(
                                  "Forgot Password",
                                  style: TextStyle(
                                    color: Colors.black,
                                    decoration: TextDecoration.underline,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                            Button(
                              title: "Continue",
                              bgColor: Colors.black,
                              textColor: Colors.white,
                              onClick: (){
                                Get.to(HomePage());
                              },
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: TextView().textMedium(text: "or with"),
                            ),
                            Button(
                              title: "Sign in with Google",
                              icon: "asset/icon/ic_google.png",
                              bgColor: ResColor.CONTAINER,
                              textColor: ResColor.LIGHT_BLACK,
                              onClick: (){
                                Get.snackbar("clicked", "Sign Google");
                              },
                            ),
                            Button(
                              title: "Sign in with Facebook",
                              icon: "asset/icon/ic_facebook.png",
                              bgColor: ResColor.BLUE,
                              textColor: Colors.white,
                              onClick: (){
                                Get.snackbar("clicked", "Sign Google");
                              },
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text.rich(
                                  TextSpan(
                                      text: "Don’t have account? ",
                                      style: const TextStyle(color: ResColor.LIGHT_BLACK),
                                      children: <InlineSpan>[
                                        TextSpan(
                                            text: "Register",
                                            style: const TextStyle(color: ResColor.BLACK, fontWeight: FontWeight.bold),
                                            recognizer: TapGestureRecognizer()..onTap = () => {
                                              Get.snackbar("register", "Clicked")
                                            }
                                        )
                                      ]
                                  )
                              ),
                            )
                          ]))))
        ]))
      ])),
    );
  }
}
