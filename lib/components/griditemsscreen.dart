import 'package:flutter/material.dart';

class GridItemsScreen extends StatelessWidget {
  const GridItemsScreen({super.key, required this.text, required this.imageUrl});
  final String text;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                color: Colors.black26,
                spreadRadius: 1,
                blurRadius: 6
            )
          ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(imageUrl, height: 100, width: 100,),
          Text(text,
            style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,

          ),)
        ],
      ),
    );
  }
}
