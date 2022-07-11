import 'package:flutter/material.dart';

import 'colors.dart';

class ErrorMarker extends StatelessWidget {
  final double diameter;
  const ErrorMarker({
    required this.diameter,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      size: diameter,
      Icons.new_releases,
      color: ten,
    );
  }
}
