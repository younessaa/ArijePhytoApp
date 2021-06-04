import 'package:ArijePhyto/screens/home/homeScreen.dart';
import 'package:ArijePhyto/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
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
        '/' : (context) => Welcome(),
        '/home' : (context) => Home(),
      },
    );
  }
}
