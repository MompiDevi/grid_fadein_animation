import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final int index;

  DetailScreen({required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 'card-image-$index',
              child: Image.asset("assets/images/panda.jpg"),
            ),
            SizedBox(height: 20),
            Text('Item $index detail'),
          ],
        ),
      ),
    );
  }
}