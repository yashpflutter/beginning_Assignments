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
    "data:image/jpeg;base64,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"
        "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
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
