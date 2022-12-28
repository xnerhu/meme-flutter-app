import 'package:flutter/material.dart';
import 'package:icon_shadow/icon_shadow.dart';

class ShadowIcon extends StatelessWidget {
  const ShadowIcon(
    this.icon, {
    Key key,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconShadowWidget(
      Icon(icon, color: Colors.white),
      shadowColor: Colors.black.withOpacity(0.4),
    );
  }
}
