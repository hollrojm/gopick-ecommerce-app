import 'dart:ffi';

import 'package:flutter/material.dart';

class DefaultIconBack extends StatelessWidget {
  final double left;
  final double top;

  final IconData icon;
  final Color color;
  final double size;
  const DefaultIconBack({
    super.key,
    required this.icon,
    required this.color,
    required this.size,
    required this.left,
    required this.top,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topLeft,
        margin: EdgeInsets.only(left: left, top: top),
        child: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(icon),
          color: color,
          iconSize: size,
        ));
  }
}
