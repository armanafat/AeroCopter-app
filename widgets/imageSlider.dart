import 'package:flutter/material.dart';
import 'package:flutter_image_slider/carousel.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.25,
          width: double.infinity,
          child: Carousel(
            isCircle: true,
            indicatorBarColor: Colors.transparent,
            autoScrollDuration: Duration(seconds: 2),
            animationPageDuration: Duration(milliseconds: 2000),
            activateIndicatorColor: Colors.black,
            animationPageCurve: Curves.easeInOut,
            scrollAxis: Axis.horizontal,
            indicatorHeight: 20,
            indicatorWidth: 10,
            unActivatedIndicatorColor: Colors.white,
            stopAtEnd: false,
            autoScroll: true,
            indicatorBarHeight: 3,
            indicatorBarWidth: MediaQuery.of(context).size.width * 0.2,

            // widgets
            items: [
              Image.asset(
                'assets/images/Airsupport03.resized - Copy.png',
                fit: BoxFit.fitHeight,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Image.asset('assets/images/air support.main.png',
                    fit: BoxFit.scaleDown),
              ),
              Image.asset('assets/images/Aircraft-pana.png',
                  fit: BoxFit.cover),

              Image.asset(
                'assets/images/Air Support-pana.png',
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
