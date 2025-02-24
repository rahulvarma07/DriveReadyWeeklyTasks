import 'package:flutter/material.dart';

class OfferBoardContainer extends StatelessWidget {
  const OfferBoardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("App Exclusive Offer", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              Text("Applicable on recharges above Rs 249.", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 11, color: Colors.grey.shade600),),
              Text("Check Now >>", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
              Text("T&C apply", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 8, color: Colors.grey.shade600),),
            ],
          )
        ],
      ),
    );
  }
}
