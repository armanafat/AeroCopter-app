import 'package:flutter/material.dart';

import 'main.dart';

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1800), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MyHomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'AeroCopter',
            style: TextStyle(fontSize: 38, fontWeight: FontWeight.w700,color: Color(0xff000635)),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              '@Developed by arMan.Afat',
              style: TextStyle(fontSize: 16,color: Color(0xffbb9f1f)),
            ),
          ),
        ]),
      )),
    );
  }
}
