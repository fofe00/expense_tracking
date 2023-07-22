import 'package:flutter/material.dart';
class AppText extends StatelessWidget {
  final String text;
  double size;
  Color color;
  FontWeight fontWeight;
   AppText({
    super.key,
    required this.text,
    this.size = 30,
    this.color = Colors.black,
    this.fontWeight=FontWeight.normal
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}
