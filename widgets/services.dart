import 'package:aerocopter/widgets/servicesCards.dart';
import 'package:aerocopter/widgets/servicesCards2.dart';

import 'package:flutter/material.dart';
import 'servicesCards.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  static const routeName = '/Services';

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  Widget _buildDot(BuildContext context, String text, IconData icon,
      Color color, double width, double height, double textSize) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.only(left: 2, right: 2, bottom: 2, top: 2),
      margin: EdgeInsets.only(left: 2, right: 2, bottom: 2, top: 2),
      child: Row(
        children: [
          Container(
            child: TextButton.icon(
              icon: Icon(
                icon,
                color: color,
              ),
              label: Text(
                text,
                overflow: TextOverflow.visible,
                softWrap: true,
                style: TextStyle(fontSize: textSize, color: Colors.black54),
              ),
              onPressed: null,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width * 1,
          // height: MediaQuery.of(context).size.width * 1,
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top, bottom: 3),
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0xffE3E3E3),
            Color(0xffD7D7D8),
            Color(0xffCBCCCD),
            Color(0xffC0C0C3),
            Color(0xffB4B5B8),
            Color(0xffA8A9AD),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: Column(children: [
            Container(
               height: MediaQuery.of(context).size.width * 0.1,
              child: Text(
                'Services',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: MediaQuery.of(context).size.height * 0.04,
                    color: Color(0xff000635)),
              ),
            ),
            Divider(
              thickness: 1,
              indent: MediaQuery.of(context).size.width * 0.2,
              endIndent: MediaQuery.of(context).size.width * 0.2,
              color: Color(0xffbb9f1f),
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.88,
                child: SingleChildScrollView(
                  child: Column(children: [
                    Column(mainAxisAlignment:MainAxisAlignment.start,
                      children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        padding: EdgeInsets.only(left: 10,right: 10),
                        child: Text(
                          'We deal with our customers needs, each service is customized'
                          ' to their individual goals from repairing one component to maintaining'
                          ' an entire fleet We’re flexible, any of the following pricing arrangement can be used to meet our customer\'s needs:',
                          style: TextStyle(
                              height: 1.3,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff000635)),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: _buildDot(
                                context,
                                'Actual labour and Material Cost,most\nDetailed Dilling Available'
                                ' to Prove \nVisibilityInto Costs.\n',
                                Icons.arrow_right_outlined,
                                Color(0xffbb9f1f),
                                MediaQuery.of(context).size.width * 0.9,
                                MediaQuery.of(context).size.height * 0.1,
                                16,
                              ),
                            ),

                            Container(
                              child: _buildDot(
                                  context,
                                  'Repair by the Hour, Actual labour\nCostapplies. '
                                  'Customer Furnished Parts \nWill be Used.\n',
                                  Icons.arrow_right_outlined,
                                  Color(0xffbb9f1f),
                                  MediaQuery.of(context).size.width * 0.9,
                                  MediaQuery.of(context).size.height * 0.1,
                                  16),
                            ),
                            Container(
                              child: _buildDot(
                                  context,
                                  'Fixed Price ,(Flat) Repairs,'
                                  ' Estimated\nCosts will be the same as the Final \nInvoice(Ask for Details).',
                                  Icons.arrow_right_outlined,
                                  Color(0xffbb9f1f),
                                  MediaQuery.of(context).size.width * 0.9,
                                  MediaQuery.of(context).size.height * 0.1,
                                  16),
                            ),
                            Container(
                              child: _buildDot(
                                  context,
                                  'Exchange,'
                                  'The Procedure is fair\nand Flexible as Possible, with Reasonable\nMark-Up.',
                                  Icons.arrow_right_outlined,
                                  Color(0xffbb9f1f),
                                  MediaQuery.of(context).size.width * 0.9,
                                  MediaQuery.of(context).size.height * 0.1,
                                  16),
                            ), //
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.02,
                  ),
                  Container(
                    // height: MediaQuery.of(context).size.height - 200,
                    width: MediaQuery.of(context).size.width * 1,
                    child: Column(
                      children: <Widget>[
                        ServicesCards("OverHaul"),
                        ServicesCards2("Repair"),
                        ServicesCards("Inspection"),
                        ServicesCards2("Maintenance"),
                        ServicesCards("Modification"),
                        ServicesCards2("Recertify"),
                      ],
                    ),
                  ),
              ],
            ),
                ))
          ]),
        ),

    );
  }
}
