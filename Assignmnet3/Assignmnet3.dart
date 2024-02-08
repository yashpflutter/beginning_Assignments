import 'package:flutter/material.dart';

class Assignmnet3 extends StatelessWidget {
  const Assignmnet3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Assignmnet 3"),
      ),
      body: SizedBox(
        height: double.infinity,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.orange,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Button i"),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Button 2"),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 100, width: 100, color: Colors.amber),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text("button 3"),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
