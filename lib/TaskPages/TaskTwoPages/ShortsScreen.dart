import 'package:driveready/Widgets/TaskTwoWidgets/topWidget.dart';
import 'package:flutter/material.dart';

import '../../Widgets/TaskTwoWidgets/BootomNavigationIcons.dart';
import '../../Widgets/TaskTwoWidgets/CustomIcons.dart';
class ShortsScreen extends StatefulWidget {
  const ShortsScreen({super.key});

  @override
  State<ShortsScreen> createState() => _ShortsScreenState();
}

class _ShortsScreenState extends State<ShortsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("Shorts", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.white,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_outlined, color: Colors.white,)),
        ],
      ),
      body: Stack(
        children: [
          Expanded(child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("Assets/Images/img.png"))
            ),
          )),
          Row(
            children: [
              Expanded(flex : 4, child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(height: 500,),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xFF2e2e2e),
                          backgroundImage: AssetImage("Assets/Images/img_2.png"),
                        ),
                        SizedBox(width: 10,),
                        Text("@SpidyTheSpider", style: TextStyle(color: Colors.white, fontSize: 12),),
                        SizedBox(width: 10,),
                        Container(height: 35, width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                          child: Center(child: Text("Subscribe"),),
                        )
                      ],
                    ),
                    Text("Whatever happens happens.....", style: TextStyle(color: Colors.white),)
                  ],
                ),
              )),
              Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 150),
                  CustomIcons(iconData: Icons.thumb_up_alt_outlined, schematicLabel: '1.4M',),
                  CustomIcons(iconData: Icons.thumb_down_alt_outlined, schematicLabel: 'Dislike',),
                  CustomIcons(iconData: Icons.comment_outlined, schematicLabel: '4,095',),
                  CustomIcons(iconData: Icons.share, schematicLabel: 'Share'),
                  CustomIcons(iconData: Icons.add_circle_outline_outlined, schematicLabel: '19k'),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Color(0xFF2e2e2e), 
                      image: DecorationImage(image: AssetImage("Assets/Images/img_1.png",), fit: BoxFit.cover), 
                    ),
                  )
                ],
              ))
            ],
          ),
        ],
      )
    );
  }
}
