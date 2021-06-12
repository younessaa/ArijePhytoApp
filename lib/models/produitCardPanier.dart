import 'package:arijephyto/components/classElement.dart';
import 'package:arijephyto/components/dataLists.dart';
import 'package:arijephyto/screens/panier/panier.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';


class ProduitCardPanier extends StatefulWidget {
  final Produit produit;
  ProduitCardPanier(this.produit);
  @override 
  _ProduitCardPanierState createState() => _ProduitCardPanierState();
}

class _ProduitCardPanierState extends State<ProduitCardPanier>{
@override
Widget build(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  return Center(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Card(
        color: Color(0xFFF5F5F5),
        child: InkWell(
          splashColor: Color(0xFFF5F5FF),
          onTap: () {},
          child: Container(
            height: height * 0.18,
            width: width * 0.95,
            child: Padding( 
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(kDefaultRadius),
                    child: Container(
                      width: width * 0.2, 
                      height: height * 0.15,
                      child: Image.asset(widget.produit.prodImage, )
                      ),
                    ),
    
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Center(
                      child: Container(
                        width: width * 0.45,
                        child: Text(
                          widget.produit.prodTitle,
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold, 
                                color: kPrimaryColorS, 
                                fontSize: kTextSizeTitle
                            )
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if(widget.produit.prodNombre > 1){
                                widget.produit.prodNombre--;
                                Panier.somme = calculeSommePanier(Panier.listProduitsPanier);
                                Navigator.popAndPushNamed(context, '/panier');
                              }
                                
                            });
                          },
                          child: Container(
                            height: width * 0.1,
                            width: width * 0.1,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Text(
                                '-',
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.bold, 
                                      color: kTextColor, 
                                      fontSize: 30
                                  )
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: width * 0.04,),
                        Text(
                          widget.produit.prodNombre.toString(),
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold, 
                                color: kTextColor, 
                                fontSize: 26
                            )
                          ),
                        ),
                        SizedBox(width: width * 0.04,),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              widget.produit.prodNombre++;
                              Panier.somme = calculeSommePanier(Panier.listProduitsPanier);
                              Navigator.popAndPushNamed(context, '/panier');
                            });
                          },
                          child: Container(
                            height: width * 0.1,
                            width: width * 0.1,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Text(
                                '+',
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.bold, 
                                      color: kTextColor, 
                                      fontSize: 30
                                  )
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                    
                  ],
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Center(
                      child: Row(
                        children: [
                          SizedBox(width: width * 0.105),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Panier.listProduitsPanier.remove(widget.produit);
                                Panier.somme = calculeSommePanier(Panier.listProduitsPanier);
                                Navigator.popAndPushNamed(context, '/panier');
                              });
                            },
                            child: Text(
                              'X',
                              style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.bold, 
                                    color: Colors.redAccent, 
                                    fontSize: kTextSizeTitle
                                )
                                ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                    widget.produit.prodPrix.toString()+'0.د.م',
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold, 
                          color: kTextColorTitle, 
                          fontSize: kTextSize
                      )
                      ),
                  ),
                    
                  ],
                ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
 }
}