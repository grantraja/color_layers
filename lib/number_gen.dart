import 'dart:math';

import 'package:flutter/material.dart';

class DataProvider with ChangeNotifier {
  List<int> sampleData = [50, 50, 50, 50];
  List<int> velocity = [0, 0, 0, 0];

  bool gen = true;

  DataProvider() {
    numberGen();
  }

  void numberGen() async {
    for (var i = 0; i < 4; i++) {
      int temp = Random().nextInt(50);
      if (temp < 10 && velocity[i] < 3) {
        velocity[i]++;
      }
      if (39 < temp && velocity[i] > -3) {
        velocity[i]--;
      }

      sampleData[i] += velocity[i];
      if (sampleData[i] > 100) {
        sampleData[i] = 100;
      } else if (sampleData[i] < 20) {
        sampleData[i] = 20;
      }
    }
    // print(sampleData);
    notifyListeners();
    await Future.delayed(const Duration(seconds: 1));
    if (gen) numberGen();
  }

  double heightVal(int height, int index) {
    return (sampleData[index] / 100) * height;
  }
}
