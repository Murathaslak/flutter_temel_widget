// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TemelButonlar extends StatelessWidget {
  const TemelButonlar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
            onLongPress: () {
              debugPrint("Uzun basıldı");
            },
            onPressed: () {},
            child: Text("textButton")),
        TextButton.icon(
            onPressed: () {},
            style: ButtonStyle(
                //backgroundColor: MaterialStateProperty.all(Colors.red),
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.teal;
                  }
                  if (states.contains(MaterialState.hovered)) {
                    return Colors.orange;
                  }
                  return null;
                }),
                foregroundColor: MaterialStateProperty.all(Colors.yellow),
                overlayColor:
                    MaterialStateProperty.all(Colors.yellow.withOpacity(0.5))),
            icon: Icon(Icons.access_alarms),
            label: Text("TextButtonwithIcon")),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.red, onPrimary: Colors.yellow),
            onPressed: () {},
            child: Text("ElevatedButton")),
        ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.accessible_forward),
            label: Text("ElevatedButtonIcon")),
        OutlinedButton(onPressed: () {}, child: Text("OutlinedButton")),
        OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              shape: StadiumBorder(),
              side: BorderSide(color: Colors.purple, width: 2),
            ),
            onPressed: () {},
            icon: Icon(Icons.add_link_sharp),
            label: Text("OutlineButtonIcon")),
        OutlinedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add_link_sharp),
            style: OutlinedButton.styleFrom(
              side: BorderSide(width: 2, color: Colors.red),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
            label: Text("OutlineButtonIcon")),
      ],
    );
  }
}
