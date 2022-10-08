import 'package:flutter/material.dart';

class Capabilities extends StatelessWidget {
  const Capabilities({Key? key}) : super(key: key);
  static const routeName = '/Capabilities';

  Widget _buildDot(BuildContext context, String text, IconData icon,
      Color color, double textSize) {
    return Card(
      elevation: 2,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.45,
        padding: EdgeInsets.only(left: 2, right: 2, bottom: 2, top: 2),
        margin: EdgeInsets.only(left: 2, right: 2, bottom: 2, top: 2),
        child: Row(
          children: [
            Container(
              child: TextButton.icon(
                icon: Icon(
                  icon,
                  color: Color(0xffbb9f1f),
                ),
                label: Text(
                  text,
                  overflow: TextOverflow.visible,
                  softWrap: true,
                  style:
                      TextStyle(fontSize: textSize, color: Color(0xff263238)),
                ),
                onPressed: null,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        padding: EdgeInsets.only(top: 30),
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0x90E3E3E3),
          Color(0x6075A2BF),
          Color(0x90CBCCCD),
          Color(0x6046769B),
          Color(0x90B4B5B8),
          Color(0x9075A2BF),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: Column(children: [
          Container(
            // height: MediaQuery.of(context).size.height * 0.08,
            child: Column(
              children: [
                Container(
                  padding:
                      EdgeInsets.only(top: 12, bottom: 8, left: 12, right: 12),
                  child: Text(
                    'HeliCopters',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: MediaQuery.of(context).size.height * 0.025,
                        color: Color(0xff000635)),
                  ),
                ),
                Container(
                  // padding: EdgeInsets.all(12),
                  child: Text(
                    'we   have  Capability   for :',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.018,
                        color: Color(0xff000635)),
                  ),
                ),Divider(
                  thickness: 1,
                  indent: MediaQuery.of(context).size.width * 0.2,
                  endIndent: MediaQuery.of(context).size.width * 0.2,
                  color: Color(0xffbb9f1f),
                ),
              ],
            ),
          ),
          Container(
               height: MediaQuery.of(context).size.height * 0.85,
               margin: EdgeInsets.only(bottom: 8, right: 6, left: 6, top: 3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
              ),
              child: ListView(
                children: [
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Column(
                      children: [
                        Container(
                          child: _buildDot(
                              context,
                              'Aerospatiale AlouetteII\n& Lama,Alouette III',
                              Icons.arrow_right_outlined,
                              Color(0xff4ba9e0),
                              // MediaQuery.of(context).size.width * 0.45,
                              // MediaQuery.of(context).size.height * 0.07,
                              12),
                        ),
                        Container(
                          child: _buildDot(
                              context,
                              'SA-330 Puma,\nSA-341/342 Gazelle\nSA-360/361/365C\nDauphin',
                              Icons.arrow_right_outlined,
                              Color(0xff4ba9e0),
                              // MediaQuery.of(context).size.width * 0.45,
                              // MediaQuery.of(context).size.height * 0.09,
                              12),
                        ),
                        Container(
                          child: _buildDot(
                              context,
                              'Agusta A-109,\nA-119 Koala',
                              Icons.arrow_right_outlined,
                              Color(0xff4ba9e0),
                              // MediaQuery.of(context).size.width * 0.45,
                              // MediaQuery.of(context).size.height * 0.07,
                              12),
                        ),
                        Container(
                          child: _buildDot(
                              context,
                              'Bell 204, 205,\n214B, 206',
                              Icons.arrow_right_outlined,
                              Color(0xff4ba9e0),
                              // MediaQuery.of(context).size.width * 0.45,
                              // MediaQuery.of(context).size.height * 0.07,
                              12),
                        ),
                        Container(
                          child: _buildDot(
                              context,
                              'JetRanger, 206L',
                              Icons.arrow_right_outlined,
                              Color(0xff4ba9e0),
                              // MediaQuery.of(context).size.width * 0.45,
                              // MediaQuery.of(context).size.height * 0.07,
                              12),
                        ),
                        Container(
                          child: _buildDot(
                              context,
                              'LongRanger,212,\n214ST, 222, 230,\n407, 412, 427, 430',
                              Icons.arrow_right_outlined,
                              Color(0xff4ba9e0),
                              // MediaQuery.of(context).size.width * 0.45,
                              // MediaQuery.of(context).size.height * 0.07,
                              12),
                        ),
                        Container(
                          child: _buildDot(
                              context,
                              'Hughes 500',
                              Icons.arrow_right_outlined,
                              Color(0xff4ba9e0),
                              // MediaQuery.of(context).size.width * 0.45,
                              // MediaQuery.of(context).size.height * 0.07,
                              12),
                        ),
                        Container(
                          child: _buildDot(
                              context,
                              'Eurocopter AS\n332 Super Puma',
                              Icons.arrow_right_outlined,
                              Color(0xff4ba9e0),
                              // MediaQuery.of(context).size.width * 0.45,
                              // MediaQuery.of(context).size.height * 0.07,
                              12),
                        ),
                        Container(
                          child: _buildDot(
                              context,
                              'AS-350 Ecureuil,\nAS-355 Ecureuil 2,\nAS-365N Dauphin',
                              Icons.arrow_right_outlined,
                              Color(0xff4ba9e0),
                              // MediaQuery.of(context).size.width * 0.45,
                              // MediaQuery.of(context).size.height * 0.07,
                              12),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 15),
                          child: _buildDot(
                              context,
                              'EC-155, BO-105,\nEC Super Five,\nEC-120 Colibri,\nEC-135, EC-635',
                              Icons.arrow_right_outlined,
                              Color(0xff4ba9e0),
                              // MediaQuery.of(context).size.width * 0.45,
                              // MediaQuery.of(context).size.height * 0.09,
                              12),
                        ),
                      ],
                    ),
                    Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: _buildDot(
                                context,
                                'ATR ATR-42, ATR-72',
                                Icons.arrow_right_outlined,
                                Color(0xff4ba9e0),
                                // MediaQuery.of(context).size.width * 0.45,
                                // MediaQuery.of(context).size.height * 0.07,
                                12),
                          ),
                          Container(
                            child: _buildDot(
                                context,
                                'BOEING',
                                Icons.arrow_right_outlined,
                                Color(0xff4ba9e0),
                                // MediaQuery.of(context).size.width * 0.45,
                                // MediaQuery.of(context).size.height * 0.07,
                                12),
                          ),
                          Container(
                            child: _buildDot(
                                context,
                                'Bombardier BD-100,\nChallenger,\nBD-700 Global Express',
                                Icons.arrow_right_outlined,
                                Color(0xff4ba9e0),
                                // MediaQuery.of(context).size.width * 0.45,
                                // MediaQuery.of(context).size.height * 0.07,
                                12),
                          ),
                          Container(
                            child: _buildDot(
                                context,
                                'Learjet 45, Learjet 55 &\n60 BAe-146',
                                Icons.arrow_right_outlined,
                                Color(0xff4ba9e0),
                                // MediaQuery.of(context).size.width * 0.45,
                                // MediaQuery.of(context).size.height * 0.07,
                                12),
                          ),
                          Container(
                            child: _buildDot(
                                context,
                                'Jetstream 31and 32',
                                Icons.arrow_right_outlined,
                                Color(0xff4ba9e0),
                                // MediaQuery.of(context).size.width * 0.45,
                                // MediaQuery.of(context).size.height * 0.07,
                                12),
                          ),
                          Container(
                            child: _buildDot(
                                context,
                                'Canadair Challenger\nCL-600,CL-601,CL-604\nCRJ-100,'
                                'CRJ-200\nCRJ-700De Havilland\nCanada Dash7,\nDHC-6Twin Otter,'
                                '\nDHC-8-100,DHC-8-200\nDHC-8-300,DHC-8-400',
                                Icons.arrow_right_outlined,
                                Color(0xff4ba9e0),
                                // MediaQuery.of(context).size.width * 0.45,
                                // MediaQuery.of(context).size.height * 0.15,
                                12),
                          ),
                          Container(
                            child: _buildDot(
                                context,
                                'Embraer EMB110\nBandeirante,\nEMB120 Brasilia\nEmbraer ERJ-135,\nERJ-140, ERJ-145',
                                Icons.arrow_right_outlined,
                                Color(0xff4ba9e0),
                                // MediaQuery.of(context).size.width * 0.45,
                                // MediaQuery.of(context).size.height * 0.1,
                                12),
                          ),
                          Container(
                            child: _buildDot(
                                context,
                                'Kawasaki BK-117',
                                Icons.arrow_right_outlined,
                                Color(0xff4ba9e0),
                                // MediaQuery.of(context).size.width * 0.45,
                                // MediaQuery.of(context).size.height * 0.08,
                                12),
                          ),
                          Container(
                            child: _buildDot(
                                context,
                                'Sikorsky S-76,\nS-58, S61, S62',
                                Icons.arrow_right_outlined,
                                Color(0xff4ba9e0),
                                // MediaQuery.of(context).size.width * 0.45,
                                // MediaQuery.of(context).size.height * 0.06,
                                12),
                          ),
                        ]),
                  ]),
                ],
              )),
        ]),
      ),
    );
  }
}
