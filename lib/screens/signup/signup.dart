import 'package:arijephyto/constants.dart';
import 'package:arijephyto/models/appBar.dart';
import 'package:arijephyto/models/forum.dart';
import 'package:arijephyto/models/bottomNavBar.dart';
import 'package:arijephyto/screens/login/login.dart';
import 'package:flutter/material.dart';
import '../nav-draw.dart';

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      drawer: NavDrawer(),
      appBar: appBarMeth(height, width, "Créer un compte"),
      bottomNavigationBar: BottomNavyBarMeth(3),
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              height: 100,
              margin: EdgeInsets.all(15),
              child: Image.asset(
                "assets/images/arijePhyto-c.jpg",
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, bottom: 15),
              child: Center(
                child: Text(
                  "créer un compte",
                  style: TextStyle(fontSize: 40, color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            blocForum('Prénom', false),
            SizedBox(
              height: 10,
            ),
            blocForum('Nom', false),
            SizedBox(
              height: 10,
            ),
            blocForum('Adresse 1', false),
            SizedBox(
              height: 10,
            ),
            blocForum('Ville', false),
            SizedBox(
              height: 10,
            ),
            blocForum('Région', false),
            SizedBox(
              height: 10,
            ),
            blocForum('Code poste', false),
            SizedBox(
              height: 10,
            ),
            blocForum('Pays', false),
            SizedBox(
              height: 10,
            ),
            blocForum('Téléphone', false),
            SizedBox(
              height: 10,
            ),
            blocForum('Email', false),
            SizedBox(
              height: 10,
            ),
            blocForum('Mots', true),
            SizedBox(
              height: 10,
            ),
            blocForum("Confirmer le mot de passe", true),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 80, top: 15, right: 80, bottom: 0),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(30.0),
                color: kPrimaryColor,
                child: MaterialButton(
                  minWidth: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  onPressed: () {
                    login();
                  },
                  child: Text("Créer un compte",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 80, top: 20, right: 80, bottom: 20),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(30.0),
                color: kTextColorTitle,
                child: MaterialButton(
                  minWidth: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  onPressed: () {
                    login();
                  },
                  child: Text("S'identifier",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
