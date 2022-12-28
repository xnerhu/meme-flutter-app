import 'package:flutter/material.dart';

class OverlayView extends StatelessWidget {
  const OverlayView({@required this.children, Key key}) : super(key: key);

  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[...children],
      ),
    );
  }
}
