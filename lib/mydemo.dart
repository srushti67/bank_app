import 'package:flutter/material.dart';

class mydemo extends StatelessWidget {
  const mydemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
        Row(
        children: [
        Expanded(child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: Container(
              child: Image.asset(
                'images/HD-wallpaper-purple-curves-abstract-gradient-pastel.jpg',
                fit: BoxFit.cover,

              ),
            ))
          ],
        ))],
    ),
    Column(
    children: [
    ],
    ),
    ],
    ),
    );
  }
}
