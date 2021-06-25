import 'package:arijephyto/components/classElement.dart';
import 'package:arijephyto/components/logicFunctions.dart';
import 'package:arijephyto/models/listsOffresPorts.dart';
import 'package:arijephyto/screens/panier/panier.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class ProduitItem extends StatefulWidget {
  @override
  _ProduitItemState createState() => _ProduitItemState();
}

class _ProduitItemState extends State<ProduitItem> {
  double _rating;
  double _initialRating = 0.0;

  @override
  void initState() {
    super.initState();
    _rating = _initialRating;
  }
  @override
  Widget build(BuildContext context) {
    Produit prod = ModalRoute.of(context).settings.arguments as Produit;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              leading: Center(
                  child: GestureDetector(
                    child: FaIcon(FontAwesomeIcons.arrowLeft, color: kTextColorTitle,),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    )
                  ),
                  title: Text(
                  prod.prodTitle,
                  style: GoogleFonts.poppins(textStyle: TextStyle(fontWeight: FontWeight.normal, color: kTextColorTitle, fontSize: kTextSize)),
                  ),
            ),

            body: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200].withOpacity(0.9),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          imageTitle(prod, width),

                          prixNombre(height, width, prod, Colors.green[100])
                        ],
                      ),
                      SizedBox(height: 10,),
                      ajouteButton(width, prod, context),
                      SizedBox(height: 10,),
                    ],
                  ),
                ),
                
                ListOffres(prod.images, Colors.greenAccent),
                SizedBox(height: 25,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Avis : ',
                    style: GoogleFonts.poppins(textStyle: TextStyle(fontWeight: FontWeight.normal, color: Colors.black, fontSize: 30)),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Il n’y pas encore d’avis.\nSoyez le premier à laisser votre avis sur “' + prod.prodTitle+'”',
                    style: GoogleFonts.poppins(textStyle: TextStyle(fontWeight: FontWeight.normal, color: Color(0xFF444444), fontSize: 18)),
                  ),
                ),

                SizedBox(height: 40.0),
                Center(
                  child: Text(
                    'Votre vote',
                    style: GoogleFonts.roboto(textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 22)),
                  ),
                ),
                SizedBox(height: 10.0),
                Center(child: _ratingBar()),
                SizedBox(height: 20.0),
                Center(
                  child: Text(
                    '$_rating',
                    style: GoogleFonts.roboto(textStyle: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF444444), fontSize: 22)),
                  ),
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Votre avis',
                          style: GoogleFonts.roboto(textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: kTextSize)),
                        ),
                        TextSpan(
                          text: ' *',
                          style: GoogleFonts.roboto(textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.red, fontSize: kTextSize)),
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    decoration : BoxDecoration(
                      color: Colors.grey[250],
                      border: Border.all(color: Colors.grey)
                    ),
                    child: TextFormField(
                    maxLines: 10,
                    decoration : const InputDecoration(
                      border: InputBorder.none,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10.0),

                Padding(
                  padding: EdgeInsets.only(left: width * 0.5, right: 4),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor : Color(0xFF6C8DAB),
                      enableFeedback: false,
                    ),
                    onPressed: (){
                    },
                    child: Text(
                      'Soumettre',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: kTextSize,
                        fontWeight: FontWeight.bold
                      ),
                    ) 
                  ),
                )
              ],
              )
    )
    ,
  );
  }

  Container ajouteButton(double width, Produit prod, BuildContext context) {
    return Container(
                      height: 50,
                      width: width * 0.75,
                      child: MaterialButton(
                            child: Text('AJOUTER AU PANIER',
                                    style: GoogleFonts.ruda(textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16)),
                                  ),
                            onPressed: () {
                              setState(() {
                                if(getProduit(Panier.listProduitsPanier, prod.idProduit) == null)
                                  Panier.listProduitsPanier.insert(0, prod);
                                else
                                  Panier.listProduitsPanier.elementAt(Panier.listProduitsPanier.indexOf(getProduit(Panier.listProduitsPanier, prod.idProduit))).prodNombre = prod.prodNombre;
                                Panier.somme = calculeSommePanier(Panier.listProduitsPanier);
                              });
                              Navigator.popAndPushNamed(context, '/panier');
                            },
                            color: Color(0xFF6C8DAB),
                            ),
                    );
  }

  Column prixNombre(double height, double width, Produit prod, Color color) {
    return Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                          height: height * 0.11,
                          width: width * 0.4,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: color,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                                prod.prodPrix.toString()+'0 Dh',
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.bold, 
                                      color: Colors.black87, 
                                      fontSize: kTextSizeTitle
                                  )
                                  ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          height: height * 0.11,
                          width: width * 0.4,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: color,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                      onTap: () {
                                          if(prod.prodNombre > 1){
                                            setState(() {
                                            prod.prodNombre--;
                                            });
                                          }
                                      },
                                      child: Container(
                                        height: width * 0.1,
                                        width: width * 0.1,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10),
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
                                    Text(
                                      prod.prodNombre.toString(),
                                      style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                            fontWeight: FontWeight.bold, 
                                            color: Colors.black87, 
                                            fontSize: 26
                                        )
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                            prod.prodNombre++;
                                            });
                                      },
                                      child: Container(
                                        height: width * 0.1,
                                        width: width * 0.1,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10),
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
                          ),
                        ),
                          ],
                        );
  }

  Column imageTitle(Produit prod, double width) {
    return Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(height: 20,),
                              ClipRRect(
                              borderRadius: BorderRadius.circular(kDefaultRadius),
                              child: Image.asset(prod.prodImage, width : width * 0.35),
                            ),
                            SizedBox(height: 20,),
                            Container(
                              width : width * 0.2,
                              child : Text(
                                prod.prodTitle,
                                style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                        fontWeight: FontWeight.bold, 
                                        color: kTextColorTitle, 
                                        fontSize: kTextSizeTitle
                                        )
                                      ),
                              ),
                            ),
                            
                            SizedBox(height: 20,),
                            ],
                          );
  }

  Widget _ratingBar() {
    return RatingBar.builder(
          initialRating: _initialRating,
          minRating: 0,
          direction: Axis.horizontal,
          allowHalfRating: true,
          unratedColor: Colors.amber.withAlpha(50),
          itemCount: 5,
          itemSize: 40.0,
          itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
          itemBuilder: (context, _) => Icon(Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            setState(() {
              _rating = rating;
            });
          },
          updateOnDrag: true,
        );
  }
}