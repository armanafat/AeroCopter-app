import 'package:aerocopter/MyIcons.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  static const routeName = '/Contact Us';

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  Future<void>? _launched;
  String _phone = '0019058509199';
  String _fax = '+1 (905) 850-9123';
  String _mail = 'info@aerocopter.ca';

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchURL(String _mail) async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'info@aerocopter.ca',
    );
    String url = params.toString();
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDarkModeEnabled=ModalRoute.of(context)!.settings.arguments as bool;
    return Scaffold(
      body: Container(
        decoration: isDarkModeEnabled ?BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xffffffff),Color(0xffebebeb),
              // Color(0xffE3E3E3),
              // Color(0xffD7D7D8),
              // Color(0xffCBCCCD),
              // Color(0xffC0C0C3),
              // Color(0xffB4B5B8),
              // Color(0xffA8A9AD),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight))
            :BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0x90000000),
                Color(0x90000000),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: Container(
          height: (MediaQuery.of(context).size.height) * 1,
          width: (MediaQuery.of(context).size.height) * 1,
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).padding.top + 10),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: 'Contact',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff000635),
                              fontSize: 40)),
                      TextSpan(
                          text: ' Us',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffbb9f1f),
                              fontSize: 40))
                    ],
                  ),
                ),
              ),
              Divider(
                indent: MediaQuery.of(context).size.width * 0.2,
                endIndent: MediaQuery.of(context).size.width * 0.2,
                color: Color(0xffbb9f1f),
                height: 10,
                thickness: 1.5,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: (MediaQuery.of(context).size.height) * 0.8,
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'We are located within \nThe Greater\n',
                            style: TextStyle(
                                color: Colors.black87.withOpacity(0.7),
                                fontSize: 20),
                          ),
                          TextSpan(
                            text: '  Toronto Area of Ontario\n Canada\n',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xffbb9f1f),
                                fontSize: 26),
                          ),
                          TextSpan(
                            text:
                                'Just Minutes from \nPearson International Airport\n providing'
                                ' convenient access\n to fast and expeditious\n shipping options.',
                            style: TextStyle(
                                color: Colors.black87.withOpacity(0.7),
                                fontSize: 20,
                                height: 1.2),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                  height: 1,
                  endIndent: 30,
                  indent: 30,
                  color: Color(0xffbb9f1f)),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 1,
                          child: Container(
                              height: MediaQuery.of(context).size.width * 0.16,
                              width: MediaQuery.of(context).size.width * 0.40,
                              decoration: BoxDecoration(
                                  color: Color(0xffebebeb),
                                  shape: BoxShape.circle),
                              child: IconButton(
                                color: Color(0xff000635),
                                iconSize:
                                    MediaQuery.of(context).size.width * 0.12,
                                icon: Icon(
                                  Icons.phone,
                                ),
                                onPressed: () => setState(() {
                                  _launched = _makePhoneCall('tel:$_phone');
                                }),
                              )),
                        ),
                        Flexible(
                          flex: 3,
                          child: Container(
                            height: 2,
                            width: MediaQuery.of(context).size.width * 0.20,
                            color: Color(0xff000635),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            height: MediaQuery.of(context).size.width * 0.16,
                            width: MediaQuery.of(context).size.width * 0.40,
                            decoration: BoxDecoration(
                              color: Color(0xffebebeb),
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              color: Color(0xff000635),
                              iconSize:
                                  MediaQuery.of(context).size.width * 0.10,
                              icon: Icon(MyFlutterApp.fax),
                              onPressed: () => setState(() {
                                _launched = _makePhoneCall('tel:$_fax');
                              }),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 1,
                            child: Container(
                                height:
                                    MediaQuery.of(context).size.width * 0.16,
                                width: MediaQuery.of(context).size.width * 0.40,
                                decoration: BoxDecoration(
                                  color: Color(0xffebebeb),
                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  color: Color(0xff000635),
                                  iconSize:
                                      MediaQuery.of(context).size.width * 0.10,
                                  icon: Icon(Icons.mail),
                                  onPressed: () => setState(() {
                                    _launched = _launchURL('mailto:$_mail');
                                  }),
                                )),
                          ),
                          Flexible(
                            flex: 3,
                            child: Container(
                              height: 2,
                              width: MediaQuery.of(context).size.width * 0.20,
                              color: Color(0xff000635),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                                height:
                                    MediaQuery.of(context).size.width * 0.16,
                                width: MediaQuery.of(context).size.width * 0.40,
                                decoration: BoxDecoration(
                                  color: Color(0xffebebeb),
                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  color: Color(0xff000635),
                                  iconSize:
                                      MediaQuery.of(context).size.width * 0.10,
                                  icon: Icon(Icons.location_on),
                                  onPressed: () {},
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Image.asset('assets/images/ContactUs.plane.png'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
