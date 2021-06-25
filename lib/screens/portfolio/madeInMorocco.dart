import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants.dart';


class MadeInMorocco extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
          child: Scaffold(
            appBar: AppBar(
                leading: Center(
                  child: GestureDetector(
                    child: FaIcon(FontAwesomeIcons.arrowLeft),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    )
                  ),
                  title: Text(
                  'Procédés Artisanaux',
                  style: GoogleFonts.poppins(textStyle: TextStyle(fontWeight: FontWeight.bold, color: kTextColor, fontSize: kTextSize)),
                  ),
            ),

            body: ListView(
              children : [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        textBlack('Le Maroc s’emploie actuellement à accroître la visibilité de son agriculture biologique au sein du royaume comme à l’étranger dans un contexte de demande en hausse, le développement du secteur étant en outre perçu par les responsables politiques comme un bon moyen de doper la valeur ajoutée agricole .'),
                      ],
                    ),
                  ),
                ),
                Image.asset("assets/images/port51.jpg", width: width * 0.6),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        textGreen('Arije Phyto  est une Coopérative Marocaine '),
                        textBlack('se propose dans nos produits cosmétique '),
                        textGreen('100% Naturels et 100% bio  '),
                        textBlack('des senteurs délicates, fleuries et sensuelles qui vous plongent dans le charme oriental et unique .'),
                      ],
                    ),
                  ),
                ),
                Image.asset("assets/images/port52.png", width: width * 0.6),
                
                SizedBox(height: 20,),
                Center(
                  child: Text(
                    'Projets récents',
                    style: GoogleFonts.ruda(textStyle: TextStyle(fontWeight: FontWeight.normal, color: Colors.black, fontSize: kTextSizeTitle)),
                    ),
                ),
                SizedBox(height : 10),
              ]
            )
    )
    ,
  );
  }

  TextSpan textBlack(String string) {
    return TextSpan(
                      text: string,
                      style: GoogleFonts.ruda(textStyle: TextStyle(fontWeight: FontWeight.normal, color: kTextColorB, fontSize: kTextSize)),
                    );
  }

  TextSpan textGreen(String string) {
    return TextSpan(
                      text: string,
                      style: GoogleFonts.ruda(textStyle: TextStyle(fontWeight: FontWeight.bold, color: kPrimaryColorS, fontSize: kTextSize)),
                    );
  }

  
}