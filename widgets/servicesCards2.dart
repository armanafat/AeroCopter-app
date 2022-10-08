import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class ServicesCards2 extends StatelessWidget {

  final String text;

  ServicesCards2(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:0, right: 12),
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
                    'assets/images/services.card.02.png',
                    fit: BoxFit.fitWidth,
                  ),),
              ),
              Positioned(
                  left: 20,
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