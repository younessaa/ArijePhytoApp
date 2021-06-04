import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';


class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Drawer(
      child: Container(
        height: height * 0.9,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Image.asset("assets/images/arije.png",),
              decoration: BoxDecoration(
                  color: Colors.white,
                  
                ),
            ),
            listTileItem('Mon compte', width, height),
            listTileItem('Portfolio', width, height),
            listTileItem('PROMO', width, height),
            listTileItem('Catégories', width, height),
            listTileItem('Contact', width, height),
            listTileItem('À Propos De', width, height),
            listTileItem('Déconnexion', width, height),
          ],
        ),
      ),
    );
  }

  GestureDetector listTileItem(String string,double width, double height) {
    return GestureDetector(
      onTap: () {

      },
      child: Container(
        height: height * 0.075,
        decoration: BoxDecoration(
          color: Color(0xFFDEFFD6),
          border: Border(bottom: BorderSide(color: Colors.grey[300], width: 4))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: width * 0.05),
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