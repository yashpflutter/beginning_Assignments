import "package:flutter/material.dart";

class Assignment11i5 extends StatelessWidget {
  const Assignment11i5({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("Hello Core2web"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Image1 add ass11i5img1"),
            Image.asset('images/ass11i5img1.jpeg', width: 150, height: 150),
            const SizedBox(height: 20),
            const Text("Image1 add ass11i5img2"),
            Image.asset('images/ass11i5img2.jpeg', width: 150, height: 150),
            const SizedBox(height: 20),
            const Text("Image1 add ass11i5img3"),
            Image.asset('images/ass11i5img3.jpeg', width: 150, height: 150),

            ///By Image.network Method
            /*  const SizedBox(
              height: 30,
            ),
            const Text("Image1"),
            Image.network(
              "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
              height: 150,
              width: 150,
            ),
            const SizedBox(width: 20),
            const Text("Image2"),
            Image.network(
              "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
              height: 150,
              width: 150,
            ),
            const SizedBox(height: 30),
            const Text("Image3"),
            Image.network(
              "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
              height: 150,
              width: 150,
            ),*/
          ],
        ),
      ),
    );
  }
}
