import 'package:flutter/material.dart';
import 'colors.dart' as color;

class SampleRow extends StatelessWidget {
  const SampleRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        sampleText(color.oneLayerColor),
        TextButton(
          onPressed: () {},
          style: sampleTextButtonStyle(
            foreground: color.oneLayerColor,
            focus: color.oneLayerAccentColor,
          ),
          child: sampleTextNC(),
        ),
        ElevatedButton(
          onPressed: () {},
          style: sampleButtonStyle(
            background: color.oneLayerColor,
            focus: color.oneLayerAccentColor,
            foreground: color.oneBaseColor,
          ),
          child: sampleTextNC(),
        ),
        FloatingActionButton(
          onPressed: () {},
          backgroundColor: color.oneLayerColor,
          foregroundColor: color.oneBaseColor,
          child: const Icon(
            Icons.ac_unit,
          ),
        )
      ],
    );
  }
}

Widget sampleText(Color color) => Text(
      "Text",
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
      ),
    );
Widget sampleTextNC() => const Text(
      "Text",
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    );

ButtonStyle sampleButtonStyle({
  required Color background,
  required Color focus,
  required Color foreground,
}) =>
    ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(background),
      overlayColor: MaterialStateProperty.all<Color>(focus),
      shadowColor: MaterialStateProperty.all<Color>(background),
      foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (states) => getColor(states, background, foreground)),
    );
ButtonStyle sampleTextButtonStyle({
  // required Color background,
  required Color focus,
  required Color foreground,
}) =>
    ButtonStyle(
      // backgroundColor: MaterialStateProperty.all<Color>(color),
      overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
      // shadowColor: MaterialStateProperty.all<Color>(background),
      // foregroundColor: MaterialStateProperty.all<Color>(foreground),
      foregroundColor: MaterialStateProperty.resolveWith(
          (states) => getColor(states, focus, foreground)),
    );

Color getColor(Set<MaterialState> states, Color color1, Color color2) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return color1;
  }
  return color2;
}
