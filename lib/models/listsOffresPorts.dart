import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../constants.dart';

List<String> imgListOffres = [
  "assets/images/offre1.png",
  "assets/images/offre2.png",
  "assets/images/offre3.png",
  "assets/images/offre4.png",
];

List<String> imgListPort = [
  "assets/images/port1.png",
  "assets/images/port2.png",
  "assets/images/port3.png",
  "assets/images/port4.png",
  "assets/images/port5.png",
];

List<String> listPortName = [
  "Procédés Artisanaux",
  "Autorisé ONSSA",
  "100% Naturel",
  "Esprit Coopérative",
  "Made in Moroccog",
];


final List<Widget> imageSlidersOffres = imgListOffres.map((item) => Padding(
  padding: EdgeInsets.only(left: 10, right: 10),
  child: ClipRRect(
    borderRadius: BorderRadius.circular(kDefaultRadius),
    child: Center(child: Image.asset(item))
  ),
)).toList();

class ListOffres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = PageController(viewportFraction: 1);
    double height = MediaQuery.of(context).size.height;
    return  Column(
      children: [
        SizedBox(
                    height: height * 0.3,
                    child: PageView(
                      controller: controller,
                      children: imageSlidersOffres
                    ),
                    ),
                    Center(
                      child: Container(
                        child: SmoothPageIndicator(
                          controller: controller,
                          count: imgListOffres.length,
                          effect: WormEffect(activeDotColor : kTextColor),
                        ),
                      ),
                    ),
      ],
    );
  }
}

class ListPortfolios extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return  SizedBox(
            height: height * 0.35,
            child: CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
            ),
            items: imgListPort.map((item) => ClipRRect(
                    borderRadius: BorderRadius.circular(kDefaultRadius),
                    child: Stack(
                      children : [
                        Image.asset(item, width: width * 0.8,),
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.grey[300],
                                        Colors.grey[50]
                                      ],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                    ),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                  child: Text(
                                    listPortName[imgListPort.indexOf(item)],
                                    style: TextStyle(
                                      color: kTextColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                        ),
                        ]),
                  )).toList(),
            ),
    );
  }
}