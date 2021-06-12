import 'package:arijephyto/components/dataLists.dart';
import 'package:arijephyto/models/promoCard.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../constants.dart';



class ListOffres extends StatefulWidget {
  final List<String> listItem; // listImagesPath
  final Color color; // activeDotColor
  ListOffres(this.listItem, this.color);
  @override
  _ListOffresState createState() => _ListOffresState();
}

class _ListOffresState extends State<ListOffres> {
  @override
  Widget build(BuildContext context) {
    final controller = PageController(viewportFraction: 1);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return  Column(
      children: [
        SizedBox(
                    height: height * 0.3,
                    child: PageView(
                      controller: controller,
                      children: widget.listItem.map((item) => Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(kDefaultRadius),
                          child: Center(child: Image.asset(item, width: width * 0.9,))
                        ),
                      )
                      ).toList()
                    ),
                    ),
                    Center(
                      child: Container(
                        child: SmoothPageIndicator(
                          controller: controller,
                          count: widget.listItem.length,
                          effect: WormEffect(activeDotColor : widget.color),
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


class ListPromos extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: listProduitsPromo.map((item) => Padding(
          padding: const EdgeInsets.all(10.0),
          child: PromoCard(item)
        )).toList(),
        ),
    );
  }
}

