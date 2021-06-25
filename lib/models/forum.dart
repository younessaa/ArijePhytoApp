import 'dart:core';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BlocForum extends StatelessWidget {
  String title;

  bool obsecur;
  BlocForum(String s, bool b) {
    title = s;
    obsecur = b;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: TextField(
        obscureText: obsecur,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(30, 15.0, 30, 15.0),
            hintText: title,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      ),
    );
  }
}
