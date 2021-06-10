import 'package:arijephyto/models/appBar.dart';
import 'package:arijephyto/models/bottomNavBar.dart';
import 'package:flutter/material.dart';
import '../nav-draw.dart';


class Panier extends StatefulWidget{
  @override
  _PanierState createState() => _PanierState();
}

class _PanierState extends State<Panier> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
          child: Scaffold(
            drawer: NavDrawer(),
            appBar: appBarMeth(height, width, 'Panier'),

            body: Center(
                  child: Text('yoooow')
            ),

            bottomNavigationBar: BottomNavyBarMeth(3),
    )
    ,
  );
  }
}