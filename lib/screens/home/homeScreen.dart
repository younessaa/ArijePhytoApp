import 'package:arijephyto/components/lists.dart';
import 'package:arijephyto/models/blogCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants.dart';
import '../nav-draw.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';


// ignore: must_be_immutable
class  Home extends StatefulWidget {
  int currentIndex = 0;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  bool hovering = false;
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
                                border: InputBorder.none,
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
                        padding: EdgeInsets.only(right: height * 0.02),
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
                  child: ListView(
                  children: [

                    ListOffres(),

                    SizedBox(height: height * 0.05),

                    ListPortfolios(),

                    SizedBox(height: height * 0.03),
                    Center(
                      child: Text(
                        'Derniers articles',
                        style: GoogleFonts.ruda(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold, 
                            color: kTextColor, 
                            fontSize: kTextSize
                        )
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.04),
                    BlogCard(
                    "assets/images/blog1.jpeg", 
                    'Les Bienfaits de La Nature sur Notre Santé', 
                    "5 FÉV 2018", 
                    "Arbres, Fleurs, Soleil, nous entourent au quotidien mais nous n’imaginons pas à quel point ils jouent un rôle dans notre vie. Humeur, comportement, émotions, dépendent réellement de la présence de la nature. Des..."
                    ),

                    BlogCard(
                    "assets/images/blog2.jpg", 
                    'Célébration de la Journée Mondiale de La Lutte contre le Cancer', 
                    "5 FÉV 2018", 
                    "A l’occasion de la journée mondiale de la lutte contre le cancer, Arije Phyto a célébré cet événement.C’était une occasion pour inciter les gens à revenir à tout ce qui est naturel et minimiser la consommation des produits contenant des ingrédients chimiques."
                    ),

                  ],
                  )
            ),

            bottomNavigationBar: 
              BottomNavyBar(
              selectedIndex: _currentIndex,
              showElevation: true,
              itemCornerRadius: 24,
              backgroundColor: kPrimaryColor,
              curve: Curves.easeIn,
              onItemSelected: (index) {setState(() => _currentIndex = index);} ,
              items: <BottomNavyBarItem>[
                BottomNavyBarItem(
                  icon: GestureDetector(
                    child: FaIcon(FontAwesomeIcons.home),
                    onTap: () {

                    }
                    ),
                  title: GestureDetector(
                    child: Text('Accueil'),
                    onTap: () {

                    }
                    ),
                  activeColor: Colors.black,
                  textAlign: TextAlign.center,
                ),
                BottomNavyBarItem(
                  icon: FaIcon(FontAwesomeIcons.store),
                  title: Text('Boutique'),
                  activeColor: Colors.black,
                  textAlign: TextAlign.center,
                ),
                BottomNavyBarItem(
                  icon: FaIcon(FontAwesomeIcons.shapes),
                  title: Text(
                    'Catégories ',
                  ),
                  activeColor: Colors.black,
                  textAlign: TextAlign.center,
                ),
                BottomNavyBarItem(
                  icon: FaIcon(FontAwesomeIcons.shoppingCart),
                  title: Text('Panier'),
                  activeColor: Colors.black,
                  textAlign: TextAlign.center,
                ),
                BottomNavyBarItem(
                  icon: FaIcon(FontAwesomeIcons.blog),
                  title: Text('Blog'),
                  activeColor: Colors.black,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
    )
    ,
  );
  }
}