import 'package:flutter/material.dart';

class TextWithIcon extends StatelessWidget {
  final String text;
  final Icon icon;

  const TextWithIcon({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        this.icon,
        SizedBox(width: 10,),
        Text(this.text)
      ],
    );
  }
}
