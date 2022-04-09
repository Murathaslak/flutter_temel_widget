// ignore_for_file: prefer_const_constructors, unused_import, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_temel_widget/dropdown_botton_kullanimi.dart';
import 'package:flutter_temel_widget/image_widgets.dart';
import 'package:flutter_temel_widget/my_counter_page.dart';
import 'package:flutter_temel_widget/popupmenu_kullanimi.dart';
import 'package:flutter_temel_widget/temel_buton_turleri.dart';

void main(List<String> args) {
  debugPrint("main metodu çalıştı");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("my app build çalıştı");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Counter App",
      theme: ThemeData(
          outlinedButtonTheme:
              OutlinedButtonThemeData(style: OutlinedButton.styleFrom()),
          textButtonTheme: TextButtonThemeData(
              style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
          )),
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
              headline1: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ))),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Furkan Şenol"),
          actions: [PopupmenuKullanimi()],
        ),
        body: TemelButonlar(),
      ),
    );
  }
}
