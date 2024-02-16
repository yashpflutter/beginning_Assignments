import 'package:flutter/material.dart';
import 'dart:math';

class Palindrome1 extends StatefulWidget {
  const Palindrome1({super.key});

  @override
  State<Palindrome1> createState() => _Palindrome1State();
}

class _Palindrome1State extends State<Palindrome1> {
  int count = 0;
  void countPalindrome() {
    count = 0;
    List<int> numbersList = [1, 225, -777, 121, 111, 234, 999];
    for (int i = 0; i < numbersList.length; i++) {
      int temp = numbersList[i].abs();
      int reverseNum = 0;
      while (temp != 0) {
        reverseNum = reverseNum * 10 + temp % 10;
        temp = temp ~/ 10;
      }
      if (reverseNum == numbersList[i].abs()) {
        count++;
      }
    }
  }

  int counter = 0;
  void countStrong() {
    List<int> numberList = [1, 225, -777, 121, 111, 234, 999];
    for (int i = 0; i < numberList.length; i++) {
      int temp = numberList[i].abs();
      if (isStrongNumber(temp)) {
        counter++;
      }
    }
  }

  bool isStrongNumber(int num) {
    int originalNum = num;
    int sum = 0;

    while (num > 0) {
      int digit = num % 10;
      sum += fact(digit);
      num ~/= 10;
    }

    return sum == originalNum;
  }

  int fact(int n) {
    if (n == 0 || n == 1) {
      return 1;
    } else {
      return n * fact(n - 1);
    }
  }

  int amcounter = 0;
  /*void countAmstrong() {
    List<int> numberList = [1, 225, -777, 121, 111, 234, 999];
    for (int i = 0; i < numberList.length; i++) {
      int temp = numberList[i].abs();
      if (isArmstrongNumber(temp)) {
        amcounter++;
      }
    }
  }

  int calculateDigits(int number) {
    int count = 0;
    while (number != 0) {
      count++;
      number ~/= 10;
    }
    return count;
  }

  bool isArmstrongNumber(int number) {
    int originalNumber = number;
    int numDigits = calculateDigits(number);
    int sum = 0;

    while (number != 0) {
      int digit = number % 10;
      sum += pow(digit, numDigits).toInt();
      number ~/= 10;
    }

    return sum == originalNumber;
  }
  */

  int customPow(int base, int exponent) {
    int result = 1;
    for (int i = 0; i < exponent; i++) {
      result *= base;
    }
    return result;
  }

  int calculateDigits(int number) {
    int count = 0;
    while (number != 0) {
      count++;
      number ~/= 10;
    }
    return count;
  }

  bool isArmstrongNumber(int number) {
    int originalNumber = number;
    int numDigits = calculateDigits(number);
    int sum = 0;

    while (number != 0) {
      int digit = number % 10;
      sum += customPow(digit, numDigits);
      number ~/= 10;
    }

    return sum == originalNumber;
  }

  void countArmstrong() {
    List<int> numberList = [1, 225, -777, 121, 111, 234, 999];

    for (int i = 0; i < numberList.length; i++) {
      int numbers = numberList[i].abs();
      if (isArmstrongNumber(numbers)) {
        amcounter++;
      }
    }
  }

/*void main() {
  List<int> numberList = [153, 370, 371, 947, 9474]; // Change this to the list of numbers you want to check
  int armstrongCount = countArmstrongNumbers(numberList);
  print("There are $armstrongCount Armstrong numbers in the list.");
}*/
  @override
  Widget build(BuildContext coontext) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Palindrome1 ass"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                countPalindrome();
                setState(() {});
              },
              child: const Text("Check Palindrome"),
            ),
            const SizedBox(
              height: 20,
            ),
            Text("$count Number are Palindrome"),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                countStrong();
                setState(() {});
              },
              child: const Text("Check Strong"),
            ),
            const SizedBox(
              height: 20,
            ),
            Text("$counter Number are Strong number"),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                countArmstrong();
                setState(() {});
              },
              child: const Text("Check Amstrong"),
            ),
            const SizedBox(height: 20),
            Text("$amcounter Number are Amstrong number"),
          ],
        ),
      ),
    );
  }
}
