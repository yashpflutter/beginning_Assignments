import "package:flutter/material.dart";

class Assignmentful3 extends StatefulWidget {
  const Assignmentful3({super.key});
  @override
  State<Assignmentful3> createState() => _Assignmentful3State();
}

class _Assignmentful3State extends State<Assignmentful3> {
  //variable
  int? selectedIndex = 0;

  //list if images

  final List<String> imageList = [
    "https://media.istockphoto.com/id/1146517111/photo/taj-mahal-mausoleum-in-agra.jpg?s=612x612&w=0&k=20&c=vcIjhwUrNyjoKbGbAQ5sOcEzDUgOfCsm9ySmJ8gNeRk=",
    "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.app.goo.gl/eQipDoGKm9PKBQbC7"
  ];
  void showNextImage() {
    setState(() {
      selectedIndex = selectedIndex! + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Display Images",
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(imageList[selectedIndex!], width: 300, height: 300),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: showNextImage,
                child: const Text(
                  "Next",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedIndex = 0;
                  });
                },
                child: const Text(
                  "Reset",
                ),
              ),
            ],
          ),
        ));
  }
}
