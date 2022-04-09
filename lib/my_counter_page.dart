// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class MyCounterPage extends StatefulWidget {
  MyCounterPage({Key? key}) : super(key: key);

  @override
  State<MyCounterPage> createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
  int _sayac = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint("myhomepage build çalıştı");
    return Scaffold(
      appBar: AppBar(
        title: Text("My Counter AppBar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Butona basılma miktarı",
              style: TextStyle(fontSize: 24),
            ),
            Text(
              _sayac.toString(),
              style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("buton tıklandı ve sayac degeri $_sayac");
          sayacArttir();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void sayacArttir() {
    setState(() {});
    _sayac++;
  }
}
