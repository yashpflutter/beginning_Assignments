import 'package:flutter/material.dart';

class Assignmentful1 extends StatefulWidget {
  const Assignmentful1({super.key});

  @override
  State<Assignmentful1> createState() => _Assignmentful1State();
}

class _Assignmentful1State extends State<Assignmentful1> {
  int? _count = 0;

  void _printTableValue() {
    setState(() {
      _count = _count! + 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Table of 2",
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Click button to print table value",
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "$_count",
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: _printTableValue,
                child: const Text("Print"),
              ),
            ],
          ),
        ));
  }
}
