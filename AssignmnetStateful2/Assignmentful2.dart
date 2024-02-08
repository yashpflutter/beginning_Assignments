import "package:flutter/material.dart";

class Assignmentful2 extends StatefulWidget {
  const Assignmentful2({super.key});

  @override
  State<Assignmentful2> createState() => _Assignmentful2State();
}

class _Assignmentful2State extends State<Assignmentful2> {
  bool box1color = false;
  bool box2color = false;

  @override
  Widget build(BuildContext conntext) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Color Box"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Box 1
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: box1color ? Colors.red : Colors.black,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //Box1 Button
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          box1color = true;
                        });
                      },
                      child: const Text("Color Box1"),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                //Box 2
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: box2color ? Colors.blue : Colors.black,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //Box 2Button
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          box2color = true;
                        });
                      },
                      child: const Text("color box2"),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
