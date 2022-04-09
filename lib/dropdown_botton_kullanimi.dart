// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, avoid_print, avoid_init_to_null, prefer_final_fields

import 'package:flutter/material.dart';

class DropDownButtonKullanimi extends StatefulWidget {
  DropDownButtonKullanimi({Key? key}) : super(key: key);

  @override
  State<DropDownButtonKullanimi> createState() =>
      _DropDownButtonKullanimiState();
}

class _DropDownButtonKullanimiState extends State<DropDownButtonKullanimi> {
  String? _secilenSehir = null;
  List<String> _tumSehirler = ["Ankara", "Bursa", "İstanbul", "İzmir"];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        hint: Text("Şehir Seçiniz"),
        icon: Icon(Icons.arrow_downward),
        style: TextStyle(color: Colors.red),
        iconSize: 32,
        underline: Container(
          height: 4,
          color: Colors.purple,
        ),
        /*items: [
          DropdownMenuItem(
            child: Text("Ankara Sehri"),
            value: "Ankara",
          ),
          DropdownMenuItem(
            child: Text("Bursa Sehri"),
            value: "Bursa",
          ),
          DropdownMenuItem(
            child: Text("İzmir Sehri"),
            value: "İzmir",
          ),
        ],*/
        items: _tumSehirler
            .map(
              (String oankiSehir) => DropdownMenuItem(
                child: Text(oankiSehir),
                value: oankiSehir,
              ),
            )
            .toList(),
        value: _secilenSehir,
        onChanged: (String? yeni) {
          setState(() {
            _secilenSehir = yeni!;
          });
        },
      ),
    );
  }
}
