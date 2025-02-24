import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Good Afternoon, prasad tnvd", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                Container(
                  height: 20,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF4f3a2e)
                  ),
                  child: Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 15,),
                )
              ],
            ),
            Row(
              children: [
                Text("9616566951 ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                Container(
                  height: h*0.025,
                  width: w*0.3,
                  decoration: BoxDecoration(
                    color: Color(0xFFfbf0e1),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Center(child: Text("Prepaid", style: TextStyle(color: Colors.orangeAccent, fontWeight: FontWeight.w600),),),
                )
              ],
            )
          ],
        ),
        IconButton(onPressed: (){}, icon: Icon(Icons.notifications_active_outlined))
      ],
    );
  }
}
