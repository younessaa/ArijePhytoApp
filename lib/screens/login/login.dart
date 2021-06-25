import 'package:arijephyto/constants.dart';
import 'package:arijephyto/models/appBar.dart';
import 'package:arijephyto/models/forum.dart';
import 'package:arijephyto/models/bottomNavBar.dart';
import 'package:arijephyto/screens/signup/signup.dart';
import 'package:flutter/material.dart';
import '../nav-draw.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      drawer: NavDrawer(),
      appBar: appBarMeth(height, width, "Log in"),
      bottomNavigationBar: BottomNavyBarMeth(3),
      body: Center(
        child: Container(
          height: height,
          width: width * 0.83,
          color: kBackground,
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  height: 100,
                  margin: EdgeInsets.all(15),
                  child: Image.asset("assets/images/arijePhyto-c.jpg"),
                ),
                Text(
                  "S'identifier",
                  style: TextStyle(fontSize: 40, color: Colors.black),
                ),
                BlocForum("Email", false),
                SizedBox(
                  height: 20,
                ),
                BlocForum('Mot de passe', true),
                SizedBox(
                  height: 10,
                ),
                Text("vous oubliez votre mot de passe ?"),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, top: 15, right: 20, bottom: 0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(30.0),
                    color: kPrimaryColor,
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      onPressed: () {},
                      child: Text("S'identifier",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25, top: 20, right: 25, bottom: 20),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(30.0),
                    color: kTextColorTitle,
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      onPressed: () {
                        Signup();
                      },
                      child: Text("Créer un compte",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
