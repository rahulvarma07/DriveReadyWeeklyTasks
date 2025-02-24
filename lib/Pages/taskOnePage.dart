import 'package:driveready/Widgets/TaskOnePageWidgets/topBar.dart';
import 'package:flutter/material.dart';

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
                    ),
                    Container(
                      height: h*0.2,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Column(
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
                      ),
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
                  child: Padding(
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
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
