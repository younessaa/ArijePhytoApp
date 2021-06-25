import 'package:arijephyto/components/lists.dart';
import 'package:arijephyto/models/appBar.dart';
import 'package:arijephyto/models/bottomNavBar.dart';
import 'package:arijephyto/models/produitCard.dart';
import 'package:flutter/material.dart';
import '../nav-draw.dart';


class Boutique extends StatefulWidget{
  @override
  _BoutiqueState createState() => _BoutiqueState();
}

class _BoutiqueState extends State<Boutique> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
          child: Scaffold(
            drawer: NavDrawer(),
            appBar: appBarMeth(height, width, 'Boutique'),

            body: new ListView.builder(
              itemCount: listProduitsC.length,
              itemBuilder: (BuildContext ctxt, int index) {
                return Padding(padding: EdgeInsets.only(bottom: 15), child : ProduitCard(listProduitsC[index]));
              }
            ),
            bottomNavigationBar: BottomNavyBarMeth(1),
    )
    ,
  );
  }
}