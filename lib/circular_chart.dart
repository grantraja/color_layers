import 'package:color_layers/colors.dart';
import 'package:flutter/cupertino.dart';

class CircularChartOne extends StatelessWidget {
  final double height;
  final int value;
  const CircularChartOne({
    required this.height,
    required this.value,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: height,
          decoration: BoxDecoration(
            color: thirty,
            shape: BoxShape.circle,
          ),
        ),
        Container(
          height: (value/100)*height,
          decoration: BoxDecoration(
            color: cpuColor,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
