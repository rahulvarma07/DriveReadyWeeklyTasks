import 'package:driveready/TaskPages/TaskTwoPages/ImageChangingWIdget.dart';
import 'package:driveready/TaskPages/TaskTwoPages/ShortsScreen.dart';
import 'package:flutter/material.dart';

import '../Widgets/TaskTwoWidgets/BootomNavigationIcons.dart';

class TaskTwoPage extends StatefulWidget {
  const TaskTwoPage({super.key});

  @override
  State<TaskTwoPage> createState() => _TaskTwoPageState();
}

class _TaskTwoPageState extends State<TaskTwoPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.black87,
        bottomNavigationBar: TabBar(
          dividerColor: Colors.transparent,
          indicatorColor: Colors.transparent,
            tabs: [
          Tab(
            child: BottomNavigationWidgetIcon(iconData: Icons.home_outlined, schematicLabel: "Home",)
          ),
          Tab(
            child: BottomNavigationWidgetIcon(iconData: Icons.home_max_outlined, schematicLabel: "Shorts")
          ),
          Tab(
            child: CircleAvatar(
            backgroundColor: Color(0xFF161616),
              child: Center(
                child: Icon(Icons.add, color: Colors.white,),
              ),
            )
          ),
          Tab(
            child: BottomNavigationWidgetIcon(iconData: Icons.subscriptions_outlined, schematicLabel: "Subscriptions")
          ),
          Tab(
            child: BottomNavigationWidgetIcon(iconData: Icons.account_circle, schematicLabel: "You"),
          )
        ]),
        body: TabBarView(
            children: [
              NavigationPage(appBarText: "Youtube", imageUrl: "Assets/Images/home.png"),
              ShortsScreen(),
              NavigationPage(appBarText: "Youtube", imageUrl: "Assets/Images/home.png"),
              NavigationPage(appBarText: "Subscription", imageUrl: "Assets/Images/subscription.png"),
              NavigationPage(appBarText: "You", imageUrl: "Assets/Images/you.png"),
            ])
      ),
    );
  }
}
