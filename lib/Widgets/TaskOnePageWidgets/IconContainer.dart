import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final IconData iconData;
  final String textName;
  const IconContainer({super.key, required this.iconData, required this.textName});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          height: h*0.07,
          width: w*0.15,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(iconData),
          ),
        ),
        Text(textName, style: TextStyle(color: Colors.grey.shade800, fontWeight: FontWeight.w400, fontSize: 9),)
      ],
    );
  }
}
