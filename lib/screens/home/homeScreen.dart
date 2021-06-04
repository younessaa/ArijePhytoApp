import 'package:flutter/material.dart';
import '../../constants.dart';
import '../nav-draw.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



// ignore: must_be_immutable
class  Home extends StatefulWidget {
  int currentIndex = 0;
  static List<ListView> listItems = [];
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    
      return SafeArea(
          child: Scaffold(
            drawer: NavDrawer(),
            appBar: AppBar(
                    leading: Builder(builder : (context) => GestureDetector(
                      child:  Center(child:  FaIcon(FontAwesomeIcons.alignLeft)
                      ),
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                    )
                    ),
                    automaticallyImplyLeading: true,
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: height * 0.05,
                          width: width * 0.6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(kDefaultRadius),
                            color: Colors.white,
                            ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 14),
                            child: TextFormField(
                              maxLines: 1,
                              enableInteractiveSelection : false,
                              enableSuggestions : true,
                              decoration : const InputDecoration(
                                hintText: 'Cherchez ici !',
                                suffixIcon: Icon(
                                  Icons.search,
                                  size: kIconSize,
                                  color: kIconColorU,
                              ),
                              ),
                            ),
                          ),
                          ),
                      ],
                    ),
                    actions: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.person,
                            size: kIconSize,
                          ),
                        )
                      ),
                    ],
            ),

            body: Center(
                  child: new ListView.builder(
                    scrollDirection : Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return null;
                    }
                  )
            ),

            bottomNavigationBar: 
              BottomNavigationBar(
                onTap: (index){
                  setState(() {
                    widget.currentIndex = index;
                  });
                  
                },
                elevation : 0,
                currentIndex : widget.currentIndex,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(
                            Icons.home,
                            size: kIconSize,
                          ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                            Icons.store_mall_directory,
                            size: kIconSize,
                          ),
                    label: 'Boutique'
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                            Icons.category,
                            size: kIconSize,
                          ),
                    label: 'Catégories'
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                            Icons.shopping_cart,
                            size: kIconSize,
                          ),
                    label: 'Panier'
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                            Icons.crop,
                            size: kIconSize,
                          ),
                    label: 'Blog'
                  ),
                ]
              )
    )
    ,
  );
  }
}