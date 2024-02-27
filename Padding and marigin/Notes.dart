import 'package:flutter/material.dart';

class PadingAssignment extends StatelessWidget {
  const PadingAssignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Padding & Margin"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          child: Container(
            height: 250,
            width: 250,
            color: Colors.amber,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(30),
            child: Image.network(
                "https://static-cse.canva.com/blob/825910/ComposeStunningImages6.jpg"),
          ),
        ),
      ),
    );
  }
}
