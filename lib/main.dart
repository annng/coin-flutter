import 'package:coin_wallet/common/widget/TextView.dart';
import 'package:coin_wallet/ui/signin.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'common/cons/ResColor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      color: Colors.white70,
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Colors.white70,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: Colors.white,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
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
