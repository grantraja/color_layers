import 'package:flutter/material.dart';

int rgbValid(double val) {
  if (val.round() > 255) {
    return 255;
  } else {
    return val.round();
  }
}

Color brightness(Color color, double shift) {
  return Color.fromARGB(
    color.alpha,
    rgbValid(color.red * shift),
    rgbValid(color.green * shift),
    rgbValid(color.blue * shift),
  );
}

/////////////////////////////////////////////////////////////////
///                                                           ///
///                     Branded Stat Colors                   ///
///                                                           ///
/////////////////////////////////////////////////////////////////
Color cpuColor = Color.fromARGB(255, 124, 201, 113);
Color memColor = Color.fromARGB(255, 241, 203, 99);
Color netColor = Color.fromARGB(255, 94, 225, 248);
Color gpuColor = Color.fromARGB(255, 242, 84, 247);

////
// Color sixty = Color.fromARGB(255, 247, 247, 247);
// Color thirty = Color.fromARGB(255, 188, 26, 150);
// Color thirtyAccent = const Color.fromARGB(255, 0, 165, 148);

/////////////////////////////////////////////////////////////////
///                                                           ///
///         THESE ARE THE ONLY VALUES THAT GET CHANGED        ///
///                                                           ///
/////////////////////////////////////////////////////////////////
Color sixty =
//Color.fromARGB(255, 19, 155, 1);
    Color.fromARGB(255, 255, 255, 255);
// const Color.fromARGB(255, 31, 42, 47);
Color thirty =
//Color.fromARGB(255, 255, 0, 234);
    Color.fromARGB(255, 2, 19, 116);
// const Color.fromARGB(255, 89, 113, 254);
Color ten = Colors.pinkAccent;

///Color Map:
//Base 0
//
//Base 1
//  Highlight 1
//
//  Layer 1
//     Base 1
//  Layer 1 Accent
//     Layer 1

Color zeroBaseColor = brightness(sixty, 0.8);
Color zeroLayerColor = brightness(thirty, 0.6);
Color zeroLayerAccentColor = brightness(thirty, 0.75);
Color oneBaseColor = sixty;
Color oneLayerColor = brightness(thirty, 0.8);
Color oneLayerAccentColor = brightness(thirty, 1); //thirtyAccent;
