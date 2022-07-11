import 'package:color_layers/colors.dart';
import 'package:flutter/cupertino.dart';

class CircularChartOne extends StatelessWidget {
  final double height;
  final double value;
  final Color color;
  const CircularChartOne({
    required this.height,
    required this.value,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: height,
      child: Stack(
        children: [
          Center(
            child: Container(
              height: height,
              decoration: BoxDecoration(
                color: sixty,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Center(
            child: Container(
              height: value,
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
