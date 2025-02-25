import 'package:flutter/material.dart';

class BottomNavigationWidgetIcon extends StatelessWidget {
  final IconData iconData;
  final String schematicLabel;
  const BottomNavigationWidgetIcon({super.key, required this.iconData, required this.schematicLabel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(iconData, color: Colors.white,),
        Text(schematicLabel, style: TextStyle(color: Colors.white, fontSize: 6.2),)
      ],
    );
  }
}
