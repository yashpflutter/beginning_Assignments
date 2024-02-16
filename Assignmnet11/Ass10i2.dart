import 'package:flutter/material.dart';

class Assignment10i2 extends StatelessWidget {
  const Assignment10i2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: const Text(
          "My title",
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
          )
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "CORE2WEB",
          )
        ],
      )),
    );
  }
}
