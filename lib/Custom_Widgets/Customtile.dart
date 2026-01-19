import 'package:flutter/material.dart';

class InfoTile extends StatelessWidget {
  final IconData? icon;
  final String? text;
  final Color? color;

  const InfoTile({
    super.key,
     this.icon,
     this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 28,
          color: color ?? Colors.black,
        ),
        const SizedBox(height: 6),
        Text(
          text!,
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
