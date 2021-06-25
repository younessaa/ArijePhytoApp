import 'package:arijephyto/screens/blogs/blogScreen.dart';
import 'package:arijephyto/screens/boutique/boutique.dart';
import 'package:arijephyto/screens/boutique/produit.dart';
import 'package:arijephyto/screens/categories/categories.dart';
import 'package:arijephyto/screens/contact-aProposDe/aproposde.dart';
import 'package:arijephyto/screens/contact-aProposDe/contact.dart';
import 'package:arijephyto/screens/login/login.dart';
import 'package:arijephyto/screens/panier/panier.dart';
import 'package:arijephyto/screens/portfolio/autoris%C3%A9ONSSA.dart';
import 'package:arijephyto/screens/portfolio/madeInMorocco.dart';
import 'package:arijephyto/screens/portfolio/portfolio.dart';
import 'package:arijephyto/screens/portfolio/proc%C3%A9d%C3%A9sArtisanaux.dart';
import 'package:arijephyto/screens/signup/signup.dart';
import 'package:arijephyto/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'screens/blogs/blogs.dart';
import 'screens/home/homeScreen.dart';
import 'screens/portfolio/100Naturel.dart';
import 'screens/promo/promo.dart';
import 'theme.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      initialRoute: '/',
      routes: {
        '/' : (context) =>  Welcome(),
        '/home' : (context) => Home(),
        '/boutique' : (context) => Boutique(),
        '/categories' : (context) => Categories(),
        '/panier' : (context) => Panier(),
        '/blogs' : (context) => Blogs(),
        '/portfolio' : (context) => Portfolio(),
        '/contact' : (context) => Contact(),
        '/aproposde' : (context) => AproposDe(),
        '/promo' : (context) => Promo(),
        '/produit' : (context) => ProduitItem(),
        '/blogscreen' : (context) => BlogScreen(),
        '/signup' : (context) => Signup(),
        '/login' : (context) => Login(),
        '/Procédés Artisanaux' : (context) => ProcedesArtisanaux(),
        '/Autorisé ONSSA' : (context) => AutoriseONSSA(),
        '/100% Naturel' : (context) => Naturel(),
        '/Made in Morocco' : (context) => MadeInMorocco(),
      },
    );
  }
}
