import 'package:arijephyto/models/appBar.dart';
import 'package:arijephyto/models/bottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants.dart';
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

            body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Choisir une catégorie',
                style: GoogleFonts.poppins(textStyle: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF8F8C8C), fontSize: kTextSize)),
              ),
            ),
            listTileItem(context, 'Accessoires', width, height, null),
            listTileItem(context, 'Aromathérapie', width, height, null),
            listTileItem(context, 'Corps', width, height, null),
            listTileItem(context, 'Enfants', width, height, null),
            listTileItem(context, 'Cheveux', width, height, null),
            listTileItem(context, 'Visage', width, height, null),
            listTileItem(context, 'Paniers Cadeaux', width, height, null),
            listTileItem(context, 'Huiles nourissantes', width, height, null),
          ],
        ),

            bottomNavigationBar: BottomNavyBarMeth(2),
    )
    ,
  );
  }

  GestureDetector listTileItem(BuildContext context, String string,double width, double height, String path) {
    return GestureDetector(
      onTap: () {
        Navigator.popAndPushNamed(context, path);
      },
      child: Container(
        height: height * 0.075,
        decoration: BoxDecoration(
          color: Color(0xFFF3F3F3),
          border: Border(bottom: BorderSide(color: Colors.grey[500], width: 2))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: width * 0.2),
              child: Text(string,
                    style: GoogleFonts.poppins(textStyle: TextStyle(fontWeight: FontWeight.bold, color: kTextColorB, fontSize: kTextSize)),
              ),
            ),
            SizedBox(height: height * 0.06,),
            Padding(
              padding: EdgeInsets.only(right: width * 0.05),
              child: FaIcon(FontAwesomeIcons.angleRight),
            ),
          ],
        ),
      ),
    );
  }
}