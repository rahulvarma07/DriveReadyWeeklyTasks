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
          ),
          SizedBox(width: 10,),
          Row(
            children: [
              Text("2", style: TextStyle(fontSize: 60, color: Color(0xFFe8873a)),),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Get", style: TextStyle(fontWeight: FontWeight.bold), ),
                  Text("% OFF", style: TextStyle(fontWeight: FontWeight.bold))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
