// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field, avoid_print

import 'package:flutter/material.dart';

class PopupmenuKullanimi extends StatefulWidget {
  const PopupmenuKullanimi({Key? key}) : super(key: key);

  @override
  State<PopupmenuKullanimi> createState() => _PopupmenuKullanimiState();
}

class _PopupmenuKullanimiState extends State<PopupmenuKullanimi> {
  String _secilenSehir = "Ankara";
  List<String> renkler = ["mavi", "yesil", "kırmızı", "sarı"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<String>(
        onSelected: (String sehir) {
          setState(() {
            print("Secilen sehir: $sehir");
            _secilenSehir = sehir;
          });
        },
        itemBuilder: (BuildContext context) {
          return renkler
              .map((String renk) => PopupMenuItem(
                    child: Text(renk),
                    value: renk,
                  ))
              .toList();
          /*return <PopupMenuEntry<String>>[
            PopupMenuItem(
              child: Text("Ankara"),
              value: "Ankara",
            ),
            PopupMenuItem(
              child: Text("Bursa"),
              value: "Bursa",
            ),
            PopupMenuItem(
              child: Text("Van"),
              value: "Van",
            ),
          ];*/
        },
      ),
    );
  }
}
