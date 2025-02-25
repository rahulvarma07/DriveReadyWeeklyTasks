import 'package:flutter/material.dart';

class IconAndContainer extends StatelessWidget {
  final IconData iconData;
  final String data;
  const IconAndContainer({super.key, required this.iconData, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF6FEFE),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Center(child: Text(data),),
    );
  }
}
