import 'package:demo/Home.dart';
import 'package:demo/MapPkg.dart';
import 'package:demo/Payonline.dart';
import 'package:demo/schedule.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Texts",
    home: MapPkg(),
    theme: ThemeData.dark().copyWith(
      appBarTheme:AppBarTheme(
        backgroundColor: Color(0xff2A9F98),
      ),
      //scaffoldBackgroundColor: Color(0xff2A9F98),
    ),    //theme: ThemeData(primarySwatch: const Color.fromARGB(0, 42, 159, 152)),
  ));
}