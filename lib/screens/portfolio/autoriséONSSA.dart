import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants.dart';


class AutoriseONSSA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                  'Autorisé ONSSA',
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
                        textBlack('Notre Coopérative '),
                        textGreen('Arije Phyto '),
                        textBlack('est accréditées et reconnues par cet établissement '),
                        textGreen('L’Office National de Sécurité Sanitaire des Produits Alimentaires (ONSSA) '),
                        textBlack('opérant dans le secteur alimentaire, et ce conformément aux dispositions de la loi n°28-07 relative à la sécurité sanitaire des produits alimentaires, ainsi que le décret pris pour son application, rendant obligatoire l’autorisation sanitaire pour l’exercice de nos activités.'),
                      ],
                    ),
                  ),
                ),
                
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