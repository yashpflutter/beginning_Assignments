import 'package:flutter/material.dart';

class Assignment11i7 extends StatelessWidget {
  const Assignment11i7({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("scrollable imgvertically")),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            //  mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 20,
              ),
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFWfZOoxNfRcC0YDEKLJOxDuVSZAXgiSq9lrfX4RShFuHuqXgEhqn-1YC0bw&s",
                height: 400,
                width: 270,
              ),
              const SizedBox(
                width: 20,
              ),
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFWfZOoxNfRcC0YDEKLJOxDuVSZAXgiSq9lrfX4RShFuHuqXgEhqn-1YC0bw&s",
                height: 400,
                width: 270,
              ),
              const SizedBox(
                width: 20,
              ),
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFWfZOoxNfRcC0YDEKLJOxDuVSZAXgiSq9lrfX4RShFuHuqXgEhqn-1YC0bw&s",
                height: 400,
                width: 270,
              ),
            ],
          ),
        ));
  }
}
