import 'package:driveready/Widgets/TaskOnePageWidgets/OfferBoardCotainer.dart';
import 'package:driveready/Widgets/TaskOnePageWidgets/QuickActionsContainer.dart';
import 'package:driveready/Widgets/TaskOnePageWidgets/topBar.dart';
import 'package:flutter/material.dart';

import '../Widgets/TaskOnePageWidgets/MainContainer.dart';

class TaskPageOne extends StatefulWidget {
  const TaskPageOne({super.key});

  @override
  State<TaskPageOne> createState() => _TaskPageOneState();
}

class _TaskPageOneState extends State<TaskPageOne> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFe8873a),
        toolbarHeight: 15,
      ),
      body: Stack(
        children: [
          Container(
            height: h,
            width: w,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Color(0xFFe88437), Color(0xFFeba058), Color(0xFFf4c897), Color(0xFFf6ebe0), Color(0xFFf6f8f7), Color(0xFFf6f8f7), Color(0xFFf6f8f7), Color(0xFFf6f8f7), Color(0xFFf6f8f7)], begin: Alignment.topCenter, end: Alignment.bottomCenter)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                TopBar(),
                SizedBox(height: h*0.03,),
                Stack(
                  children: [
                    Container(
                      height: h*0.24,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color(0xFFfbe5e5),
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Row(
                            children: [
                              Icon(Icons.warning_amber, color: Color(0xFFda8e95), size: 19,),
                              Text("Uh-Oh! Your plan has expired Recharge now.", style: TextStyle(color: Color(0xFFda8e95), fontSize: 12),), 
                              SizedBox(width: w*0.1,),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: h*0.2,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: MainContainer()
                    ),
                  ],
                ), 
                SizedBox(height: h*0.03,),
                Container(
                  height: h*0.16,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    gradient: LinearGradient(colors: [Color(0xFFcbe2f9), Color(0xFFd4e7f8), Color(0xFFe3edf6)])
                  ),
                  child: OfferBoardContainer(),
                ),
                SizedBox(height: h*0.02,),
                Container(
                  height: h*0.36,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.white,
                    boxShadow : [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        spreadRadius: 4,
                        blurRadius: 5,
                      )
                    ]
                  ),
                  child: QuickActionsContainer(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
