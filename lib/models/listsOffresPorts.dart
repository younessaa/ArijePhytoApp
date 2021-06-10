import 'package:arijephyto/components/dataLists.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../constants.dart';




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

class ListPortfoliosV extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Center(
      child: ListView(
        children: imgListPort.map((item) => Padding(
          padding: const EdgeInsets.all(10.0),
          child: ClipRRect(
                      borderRadius: BorderRadius.circular(kDefaultRadius),
                      child: Stack(
                        children : [
                          Center(child: Image.asset(item, width: width * 0.7,)),
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
                    ),
        )).toList(),
        ),
    );
  }
}

// new ListView.builder
//   (
//     itemCount: litems.length,
//     itemBuilder: (BuildContext ctxt, int index) {
//      return new Text(litems[index]);
//     }
//   )