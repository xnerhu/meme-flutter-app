import 'dart:ui';

import 'package:flutter/material.dart';

class MemeImage extends StatelessWidget {
  const MemeImage({this.image, Key key}) : super(key: key);
  final image;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          SizedBox.expand(
            child: Image.network(
              image,
              fit: BoxFit.fitHeight,
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.7),
          ),
          Center(
            child: Image.network(
              image,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
