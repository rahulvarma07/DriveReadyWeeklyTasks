import 'package:flutter/material.dart';

class CustomIcons extends StatelessWidget {
  final IconData iconData;
  final String schematicLabel;
  const CustomIcons({super.key, required this.iconData, required this.schematicLabel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(iconData, color: Colors.white,),
        Text(schematicLabel, style: TextStyle(color: Colors.white, fontSize: 10),)
      ],
    );
  }
}
