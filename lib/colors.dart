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
Color cpuColor = const Color.fromARGB(255, 40, 197, 19);
Color memColor = const Color.fromARGB(255, 255, 200, 0);
Color netColor = const Color.fromARGB(255, 4, 98, 205);
Color gpuColor = const Color.fromARGB(255, 218, 5, 76);

////
// Color sixty = Color.fromARGB(255, 247, 247, 247);
// Color thirty = Color.fromARGB(255, 188, 26, 150);
// Color thirtyAccent = const Color.fromARGB(255, 0, 165, 148);


/////////////////////////////////////////////////////////////////
///                                                           ///
///         THESE ARE THE ONLY VALUES THAT GET CHANGED        ///
///                                                           ///
/////////////////////////////////////////////////////////////////
Color sixty = const Color.fromARGB(255, 31, 42, 47);
Color thirty = const Color.fromARGB(255, 89, 113, 254);
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

Color zeroBaseColor = brightness(sixty, 0.75);
Color zeroLayerColor = brightness(thirty, 0.6);
Color zeroLayerAccentColor = brightness(thirty, 0.75);
Color oneBaseColor = sixty;
Color oneLayerColor = brightness(thirty, 0.8);
Color oneLayerAccentColor = brightness(thirty, 1);//thirtyAccent;

