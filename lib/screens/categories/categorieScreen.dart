import 'package:arijephyto/components/dataLists.dart';
import 'package:arijephyto/components/lists.dart';
import 'package:arijephyto/models/appBar.dart';
import 'package:arijephyto/models/bottomNavBar.dart';
import 'package:arijephyto/models/produitCard.dart';
import 'package:flutter/material.dart';
import '../nav-draw.dart';


class CategorieScreen extends StatefulWidget{
  @override
  _CategorieScreenState createState() => _CategorieScreenState();
}

class _CategorieScreenState extends State<CategorieScreen> {
  @override
  Widget build(BuildContext context) {
    int i = ModalRoute.of(context).settings.arguments as int;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
          child: Scaffold(
            drawer: NavDrawer(),
            appBar: appBarMeth(height, width, categoriesName[i]),

            body: new ListView.builder(
              itemCount: matrixList[i].length,
              itemBuilder: (BuildContext ctxt, int index) {
                return Padding(padding: EdgeInsets.only(bottom: 15), child : ProduitCard(matrixList[i][index]));
              }
            ),
            bottomNavigationBar: BottomNavyBarMeth(1),
    )
    ,
  );
  }
}