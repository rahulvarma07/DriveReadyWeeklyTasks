import 'package:driveready/Widgets/TaskTwoWidgets/IconAndContainerWidget.dart';
import 'package:flutter/material.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Row(
          children: [
            IconAndContainer(iconData: Icons.subscriptions_outlined, data: "Subscriptions")
          ],
        ),
      ),
    );
  }
}
