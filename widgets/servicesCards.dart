import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class ServicesCards extends StatelessWidget {

  final String text;

  ServicesCards(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 0),
      child: Column(
        children: <Widget>[
          Stack(
            children: [
              Container(
                //alignment: Alignment.centerRight,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  height: MediaQuery.of(context).size.height * 0.20,
                  width: MediaQuery.of(context).size.width * 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(15),
                      topLeft:  Radius.circular(15),
                      bottomRight:  Radius.circular(15),
                      bottomLeft:  Radius.circular(3)),
                  child:Image.asset(
                  'assets/images/services.card.01.png',
                  fit: BoxFit.fitWidth,
                ),),
              ),
              Positioned(
                  right: 20,
                  //top: MediaQuery.of(context).size.height * 0.20/2,
                  bottom: 75,

                  child: Container(
                    child: Text(
                      text,
                      style: TextStyle(color: Color(0xffbb9f1f), fontSize: 18,fontWeight: FontWeight.w700),
                    ),
                  ))
            ],
          )

          // ),
        ],
      ),
    );
  }
}

// class RPSCustomPainter extends CustomPainter{
//
//   @override
//   void paint(Canvas canvas, Size size) {
//
//
//
//     Paint paint_0 = new Paint()
//       ..color = Color.fromARGB(255, 33, 150, 243)
//       ..style = PaintingStyle.fill
//       ..strokeWidth = 1.0;
//     paint_0.shader = ui.Gradient.linear(Offset(0,size.height*0.84),
//         Offset(size.width*0.90,size.height*0.84),
//         [Color(0xff000635),Color(0xff08114e),Color(0xff061ea6)],[0.00,0.46,1.00]);
//
//     Path path_0 = Path();
//     path_0.moveTo(0,size.height*0.7300000);
//     path_0.lineTo(0,size.height);
//     path_0.lineTo(size.width*0.8975000,size.height);
//     path_0.quadraticBezierTo(size.width*0.8212500,size.height*0.9615000,size.width*0.7612500,size.height*0.9160000);
//     path_0.cubicTo(size.width*0.6359375,size.height*0.8175000,size.width*0.5815625,size.height*0.8345000,size.width*0.4837500,size.height*0.8000000);
//     path_0.cubicTo(size.width*0.4168750,size.height*0.7770000,size.width*0.2968750,size.height*0.8210000,size.width*0.2512500,size.height*0.7780000);
//     path_0.quadraticBezierTo(size.width*0.1565625,size.height*0.6815000,0,size.height*0.7300000);
//     path_0.close();
//
//     canvas.drawPath(path_0, paint_0);
//
//
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
//
// }










