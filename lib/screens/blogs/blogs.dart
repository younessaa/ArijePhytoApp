import 'package:arijephyto/models/appBar.dart';
import 'package:arijephyto/models/blogCard.dart';
import 'package:arijephyto/models/bottomNavBar.dart';
import 'package:flutter/material.dart';
import '../nav-draw.dart';


class Blogs extends StatefulWidget{
  @override
  _BlogsState createState() => _BlogsState();
}

class _BlogsState extends State<Blogs> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
          child: Scaffold(
            drawer: NavDrawer(),
            appBar: appBarMeth(height, width, 'Blogs'),

            body: Center(
                  child: ListView(
                  children: [

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

            bottomNavigationBar: BottomNavyBarMeth(4),
    )
    ,
  );
  }
}