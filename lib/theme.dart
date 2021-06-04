import 'package:flutter/material.dart';
import 'constants.dart';


ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.white,

    appBarTheme: AppBarTheme(
      backgroundColor : kPrimaryColor,
      iconTheme: IconThemeData(color: kIconColorU),
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: kPrimaryColor,
      selectedItemColor: kIconColor,
      unselectedItemColor: kIconColorU,
      selectedIconTheme: IconThemeData(color: kIconColor),
      unselectedIconTheme: IconThemeData(color: kIconColorU),
      unselectedLabelStyle: TextStyle(fontSize: 14.5),
      selectedLabelStyle: TextStyle(fontSize: 14.5, fontWeight: FontWeight.bold),
      showUnselectedLabels: true,
      enableFeedback: false,
      elevation : 0,
      type : BottomNavigationBarType.fixed,
    ),
  );
}
