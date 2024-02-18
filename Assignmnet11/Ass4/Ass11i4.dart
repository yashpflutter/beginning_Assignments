import "package:flutter/material.dart";

class Assignment11i4 extends StatelessWidget {
  const Assignment11i4({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
          SizedBox(width: 30),
          Container(width: 100, height: 100, color: Colors.green),
        ],
      ),
    ));
  }
}
