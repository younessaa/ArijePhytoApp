import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';


class ProduitCard extends StatefulWidget {
  final String prodTitle;
  final int prodNombre;
  final double prodPrix;
  final String prodImage;
  ProduitCard(this.prodImage, this.prodTitle, this.prodNombre, this.prodPrix);
  @override 
  _ProduitCardState createState() => _ProduitCardState();
}

class _ProduitCardState extends State<ProduitCard>{
@override
Widget build(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  return Center(
    child: Card(
      color: Color(0xFFF5F5F5),
      child: InkWell(
        splashColor: Color(0xFFF5F5FF),
        onTap: () {},
        child: Container(
          height: height * 0.32,
          width: width * 0.9,
          child: Padding( 
            padding: EdgeInsets.all(width * 0.02),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(kDefaultRadius),
                      child: Container(
                        width: width * 0.35, 
                        height: height * 0.2,
                        child: Image.asset(widget.prodImage, )
                        ),
                      ),
                      Center(
                    child: Container(
                      width: width * 0.4,
                      child: Text(
                        widget.prodTitle,
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold, 
                              color: kTextColorTitle, 
                              fontSize: kTextSizeTitle
                          )
                          ),
                      ),
                    ),
                  ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: width * 0.4,
                      child: Text(
                        widget.prodPrix.toString()+'0.د.م',
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.normal, 
                              color: kTextColorTitle, 
                              fontSize: kTextSize
                          )
                          ),
                      ),
                    ),
                    Container(
                      width: width * 0.45,
                      child: TextButton(
                            child: Text('AJOUTER AU PANIER',
                                    style: GoogleFonts.ruda(textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16)),
                                  ),
                            onPressed: () {
                              Navigator.popAndPushNamed(context, '/panier');
                            },
                            style: TextButton.styleFrom(backgroundColor: Color(0xFF6C8DAB), enableFeedback: false,),
                          ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );
 }
}