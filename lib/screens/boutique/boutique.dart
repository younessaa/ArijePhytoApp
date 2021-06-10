import 'package:arijephyto/components/dataLists.dart';
import 'package:arijephyto/models/appBar.dart';
import 'package:arijephyto/models/bottomNavBar.dart';
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

            body: ListView(
              children : listProduits,
            ),
            bottomNavigationBar: BottomNavyBarMeth(1),
    )
    ,
  );
  }
}