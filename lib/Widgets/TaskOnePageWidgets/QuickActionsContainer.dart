import 'package:flutter/material.dart';

import 'IconContainer.dart';

class QuickActionsContainer extends StatelessWidget {
  const QuickActionsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Quick Actions", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconContainer(iconData: Icons.mobile_screen_share_outlined, textName: "Recharge",),
              IconContainer(iconData: Icons.money, textName: "Pay Bill",),
              IconContainer(iconData: Icons.network_ping_outlined, textName: "Landline",),
              IconContainer(iconData: Icons.fiber_dvr_outlined, textName: "Book Fiber",),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconContainer(iconData: Icons.sim_card_alert_outlined, textName: "Upgrade to 4G \n        SIM",),
              IconContainer(iconData: Icons.padding_outlined, textName: "Choose Your \n     Number",),
              IconContainer(iconData: Icons.lock_clock_outlined, textName: "Do Not Disturb",),
              IconContainer(iconData: Icons.gamepad_outlined, textName: "Games",),
            ],
          )
        ],
      ),
    );
  }
}
