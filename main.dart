//import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';

import 'package:flutter_image_slider/carousel.dart';
import 'package:blur/blur.dart';
import './widgets/imageSlider.dart';

import 'cost/proximateCost.dart';
import 'myThemes.dart';
import 'splashScreen.dart';
import './widgets/mainKeys.dart';
import './widgets/contact_us.dart';
import './widgets/About%20Us.dart';
import './widgets/capabilities.dart';
import './widgets/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SplashScreen(),
      routes: {
        ContactUs.routeName: (ctx) => ContactUs(),
        AboutUs.routeName: (ctx) => AboutUs(),
        Services.routeName: (ctx) => Services(),
        Capabilities.routeName: (ctx) => Capabilities(),
        ProximateCost.routeName: (ctx) => ProximateCost(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isDarkModeEnabled =false;

  // void changeTheme(bool isDarkModeEnabled) {
  //   setState(() {
  //     isDarkModeEnabled = !isDarkModeEnabled;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          isDarkModeEnabled
              ? Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color(0xffE3E3E3),
                    Color(0xffD7D7D8),
                    Color(0xffCBCCCD),
                    Color(0xffC0C0C3),
                    Color(0xffB4B5B8),
                    Color(0xffA8A9AD),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                )
              : Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color(0xff000000),
                    Color(0xff000000),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                ),
          Container(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
            child: Carousel(
              height: MediaQuery.of(context).size.height * 0.9,
              isCircle: true,
              width: MediaQuery.of(context).size.width * 1,
              indicatorBarColor: Colors.transparent,
              autoScrollDuration: Duration(seconds: 2),
              animationPageDuration: Duration(milliseconds: 2000),
              activateIndicatorColor: Colors.transparent,
              animationPageCurve: Curves.easeInOut,
              scrollAxis: Axis.vertical,
              indicatorHeight: 20,
              indicatorWidth: 10,
              unActivatedIndicatorColor: Colors.transparent,
              stopAtEnd: false,
              autoScroll: true,
              indicatorBarHeight: 0,
              indicatorBarWidth: 0,
              items: [
                FittedBox(
                  child: Container(color: Colors.transparent),
                  fit: BoxFit.cover,
                ),
                FittedBox(
                  child: Image.asset(
                    'assets/images/BG.plane.png',
                    fit: BoxFit.cover,
                  ),
                ),
                FittedBox(
                    child: Container(color: Colors.transparent),
                    fit: BoxFit.cover)
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.height * 1,
            color: Colors.transparent,
          ).frosted(
            blur: 3,
            borderRadius: BorderRadius.circular(20),
            padding: EdgeInsets.all(8),
          ),
          Container(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      height: (MediaQuery.of(context).size.height -
                              MediaQuery.of(context).padding.top) *
                          0.1,
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).padding.top + 10,
                          left: 10),
                      width: MediaQuery.of(context).size.width * 0.80,
                      child: Text(
                        'AeroCopter',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Color(0xff000635),
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Container(
                      child: Switch(
                        value: isDarkModeEnabled,
                        onChanged: (value) {
                          setState(() {
                            isDarkModeEnabled = value;
                          });
                        },
                      )
                      // DayNightSwitcherIcon(
                      //     isDarkModeEnabled: isDarkModeEnabled,
                      //     onStateChanged: changeTheme),
                    ),
                  ],
                ),
                ImageSlider(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.99,
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: InkWell(
                      child: FittedBox(
                          child: Image.asset(
                        'assets/images/contact us .aerocopter001.png',
                      )),
                      onTap: () {
                        Navigator.of(context).pushNamed(ContactUs.routeName,arguments: isDarkModeEnabled);
                      }),
                ),
                MainKeys(),
                Container(
                  // height: MediaQuery.of(context).size.height*0.23,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/AeroCopter.main.dw002.png',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
