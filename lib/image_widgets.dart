// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _imgUrl =
        "https://www.ilgincgercek.com/wp-content/uploads/2018/05/ilginc-araba.jpg";
    String _imgUr2 =
        "https://www.digitalyazarlar.com/wp-content/uploads/en-iyi-spor-araba-markalari-1140x600.jpg";
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: Image.asset(
                      "assets/images/ders.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: Image.network(
                      _imgUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        /*child: Text(
                          "o",
                          style: Theme.of(context).textTheme.headline1,
                        ),*/
                        backgroundImage: NetworkImage(_imgUr2),
                        backgroundColor: Colors.amber,
                        foregroundColor: Colors.red,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            child: FadeInImage.assetNetwork(
                fit: BoxFit.cover,
                placeholder: "assets/images/Hourglass.gif",
                image: _imgUr2),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Placeholder(),
            ),
          ),
        ],
      ),
    );
  }
}
