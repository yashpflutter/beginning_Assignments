import "package:flutter/material.dart";

class Assignment11i3 extends StatelessWidget {
  const Assignment11i3({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("Hello Core2web"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Container(height: 200, width: 360, color: Colors.blue)],
      ),
    );
  }
}
