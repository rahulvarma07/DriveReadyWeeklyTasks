import 'package:flutter/material.dart';

class NavigationPage extends StatelessWidget {
  final String appBarText;
  final String imageUrl;
  const NavigationPage({super.key, required this.appBarText, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(appBarText, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.white,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_outlined, color: Colors.white,)),
        ],
      ),
      body: Expanded(child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(imageUrl))
        ),
      )),
    );
  }
}
