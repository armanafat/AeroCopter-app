import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);
  static const routeName = '/About Us';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // height: (MediaQuery.of(context).size.height -
        //         MediaQuery.of(context).padding.top) *
        //     1,
        width: MediaQuery.of(context).size.width * 1,
        padding: EdgeInsets.only(top: 40, left: 10, right: 10, bottom: 10),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xffE3E3E3),
          Color(0x5075A2BF),
          Color(0x80CBCCCD),
          Color(0x5046769B),
          Color(0x80B4B5B8),
          Color(0x9075A2BF),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: 'About',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff000635),
                          fontSize: MediaQuery.of(context).size.height * 0.04)),
                  TextSpan(
                      text: ' Us',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xffbb9f1f),
                          fontSize: MediaQuery.of(context).size.height * 0.04))
                ],
              ),
            ),
          ),
          Divider(
            thickness: 1,
            indent: MediaQuery.of(context).size.width * 0.2,
            endIndent: MediaQuery.of(context).size.width * 0.2,
            color: Color(0xffbb9f1f),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            padding: EdgeInsets.only(left: 20,right: 20),
            child: Image.asset('assets/images/aboutUs.airplane.png'),
          ),
          Container(height: MediaQuery.of(context).size.height * 0.67,
              child: ListView(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  'Founded in 2004, Aerocopter Component Services Ltd.'
                  ' (ACS) is a privately-owned Transport Canada and European Aviation Safety Agency (EASA) Approved Maintenance Organization (AMO).\n'
                  ' The Federal Aviation Administration (FAA) recognizes our approvals,\n through Bilateral Agreements.\nAerocopter Component Services provides '
                  'technically sound, cost-effective solutions for our customers’'
                  ' business objectives. Our ultimate goal is to successfully support their operations through innovation and quality.\nWe offer repair and overhaul'
                  ' services specializes in wide range of aircraft components, within the rotary wing, regional and airliners sectors. Our staff and mangers have '
                  'combined their expertise to provide our customers top quality products and services at the best price/quality ratio.\nWe are committed to quality;'
                  ' and our policy is to maintain the highest standards of maintenance in keeping with safety and efficiency.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400, height: 1.3),
                ),
              ),
              Divider(
                indent: MediaQuery.of(context).size.width * 0.1,
                endIndent: MediaQuery.of(context).size.width * 0.1,
                thickness: 1,
                color: Color(0xffbb9f1f),
              ),
              Container(
                child: RichText(textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: 'Our',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffbb9f1f),
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.04)),
                      TextSpan(
                          text: ' Certifications',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff000635),
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.04))
                    ],
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(bottom: 10, top: 20),
                  width: MediaQuery.of(context).size.width * 0.6,
                  child:
                      Image.asset('assets/images/certifications.ca copy.png')),
            ],
          ))
        ]),
      ),
    );
  }
}
