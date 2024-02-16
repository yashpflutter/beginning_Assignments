import "package:flutter/material.dart";

class Assignment10i1 extends StatelessWidget {
  const Assignment10i1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text(
            "MytextTitle",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 30,
            ),
          ),
          actions: [
            Icon(
              Icons.favorite_rounded,
              color: Colors.white,
              size: 50,
            ),
            Icon(
              Icons.favorite_rounded,
              color: Colors.blue,
              size: 50,
            ),
          ]),
    );
  }
}
