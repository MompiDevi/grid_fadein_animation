import 'package:flutter/material.dart';
import 'package:reels_code/animated_card.dart';
import 'package:reels_code/detail_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Listview")),
        body: 
        GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3) , itemBuilder:(context, index) {
          return AnimatedCard(index: index,
            child: GestureDetector(child: Hero(tag:'card-image-$index' ,child: Card(child: Image.asset("assets/images/panda.jpg"),)),onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(index: index),));
            },),
          );
        },itemCount: 20,),
        // ListView.builder(itemBuilder: (context, index) {
        //   return AnimatedCard(index: index,
        //     child: GestureDetector(child: Hero(tag: 'card-image-$index',child: Card(child: Image.asset("assets/images/panda.jpg"),)), onTap: (){
        //       Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(index: index),));
        //     },),
        //   );
        // },itemCount: 10, )
        
      ),
    );
  }
}


