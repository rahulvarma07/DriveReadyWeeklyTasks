import 'package:flutter/material.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SizedBox(height: h*0.03,),
        Row(
          children: [
            SizedBox(width: w*0.32,),
            Container(
              height: h*0.06,
              width: w*0.13,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.grey.shade300)
              ),
              child: Center(
                child: Icon(Icons.thumbs_up_down, color: Color(0xFF565a5c),),
              ),
            ),
            SizedBox(width: w*0.01,),
            Container(
              height: h*0.01,
              width: w*0.04,
              color: Colors.red,
            ),
            SizedBox(width: w*0.01,),
            Container(
              height: h*0.06,
              width: w*0.003,
              color: Colors.grey.shade300,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text("O ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    Text("Pack", style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),)
                  ],
                ),
                Text("Expired", style: TextStyle(color: Colors.red),)
              ],
            )
          ],
        ),
        SizedBox(height: h*0.02,),
        Row(
          children: [
            SizedBox(width: w*0.15,),
            Container(
              height: h*0.055,
              width: w*0.3,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30)),
                border: Border.all(color: Color(0xFFdeb584), width: 2),
              ),
              child: Center(child: Text("View Pack", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFdeb584)),)),
            ),
            SizedBox(width: w*0.04,),
            Container(
              height: h*0.055,
              width: w*0.3,
              decoration: BoxDecoration(
                color: Color(0xFFe78336),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Center(child: Text("Recharge", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFfbf2bd)),)),
            )
          ],
        ),
      ],
    );
  }
}
