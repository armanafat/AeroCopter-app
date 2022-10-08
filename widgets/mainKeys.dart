import 'dart:ui';
import 'package:aerocopter/cost/proximateCost.dart';
import 'package:aerocopter/widgets/capabilities.dart';
import 'package:aerocopter/widgets/services.dart';
import 'package:flutter/material.dart';

import 'About Us.dart';

class MainKeys extends StatelessWidget {
  const MainKeys({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.34,
      width: MediaQuery.of(context).size.width * 0.96,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            elevation: 0,
            color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                  // gradient: LinearGradient(
                  //   colors: [
                  //     Color(0x70bb9f1f),
                  //     Color(0x20ebebeb)
                  //   ],
                  //   begin: Alignment.center, stops: [0.35,0.9],
                  //   // end: Alignment.centerRight
                  // ),
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(width: 1, color: Color(0x70bb9f1f))),
              width: MediaQuery.of(context).size.width * 0.6,
              padding:
                  EdgeInsets.only(bottom: 10, left: 40, right: 40, top: 10),
              child: InkWell(
                child: Text(
                  'Services',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Color(0xff000635)),
                ),
                onTap: () =>
                    Navigator.of(context).pushNamed(Services.routeName),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            elevation: 0,
            color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                  //color: Colors.transparent,
                  // gradient: LinearGradient(
                  //   colors: [Color(0x70bb9f1f), Color(0x20ebebeb)],
                  //   begin: Alignment.centerLeft,
                  //   stops: [0.4, 0.9],
                  //   // end: Alignment.centerRight
                  // ),
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(width: 1, color: Color(0x70bb9f1f))),
              width: MediaQuery.of(context).size.width * 0.6,
              padding:
                  EdgeInsets.only(bottom: 10, left: 40, right: 40, top: 10),
              child: InkWell(
                  child: Text(
                    'proximate Cost',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Color(0xff000635)),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(ProximateCost.routeName);
                  }),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            elevation: 0,
            color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                  //color: Colors.transparent,
                  // gradient: LinearGradient(
                  //     colors: [Color(0x70bb9f1f), Color(0x20ebebeb)],
                  //     begin: Alignment.centerLeft,
                  //     stops: [0.2,0.8]
                  //     // end: Alignment.centerRight
                  // ),
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(width: 1, color: Color(0x70bb9f1f))),
              width: MediaQuery.of(context).size.width * 0.6,
              padding:
                  EdgeInsets.only(bottom: 10, left: 40, right: 40, top: 10),
              child: InkWell(
                child: Text(
                  'Capabilities',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Color(0xff000635)),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed(Capabilities.routeName);
                },
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            elevation: 0,
            color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                  // border: Border.all(color:Color(0xffbb9f1f),width: 0.3 ),
                  //color: Colors.transparent,
                  // gradient: LinearGradient(
                  //     colors: [Color(0x70bb9f1f), Color(0x20ebebeb)],
                  //     begin: Alignment.centerLeft,
                  //     stops: [0.1, 0.5]
                  //     // end: Alignment.centerRight
                  //     ),
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(width: 1, color: Color(0x70bb9f1f))),
              width: MediaQuery.of(context).size.width * 0.6,
              padding:
                  EdgeInsets.only(bottom: 10, left: 40, right: 40, top: 10),
              child: InkWell(
                child: Text(
                  'About Us',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Color(0xff000635)),
                ),
                onTap: () => Navigator.of(context).pushNamed(AboutUs.routeName),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
