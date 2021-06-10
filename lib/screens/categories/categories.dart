import 'package:arijephyto/models/appBar.dart';
import 'package:arijephyto/models/bottomNavBar.dart';
import 'package:flutter/material.dart';
import '../nav-draw.dart';


class Categories extends StatefulWidget{
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
          child: Scaffold(
            drawer: NavDrawer(),
            appBar: appBarMeth(height, width, 'Catégories'),

            body: Center(
                  child: Text('yoooow')
            ),

            bottomNavigationBar: BottomNavyBarMeth(2),
    )
    ,
  );
  }
}