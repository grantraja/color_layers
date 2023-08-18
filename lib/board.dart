import 'package:color_layers/circular_chart.dart';
import 'package:color_layers/error_marker.dart';
import 'package:provider/provider.dart';
import 'number_gen.dart';
import 'package:color_layers/colors.dart';
import 'package:flutter/cupertino.dart';
import 'coordinated_offset.dart';

class BoardDiagram extends StatelessWidget {
  const BoardDiagram({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 400,
      child: Stack(
        children: [
          Image.asset('assets/board.png'),
          CoordinateOffset(
            X: 0.55,
            Y: 0.2,
            height: 200,
            width: 200,
            child: CircularChartOne(
              height: 26,
              value: Provider.of<DataProvider>(context).heightVal(26, 0),
              color: cpuColor,
            ),
          ),
          CoordinateOffset(
            X: 0.66,
            Y: 0.058,
            height: 200,
            width: 200,
            child: CircularChartOne(
              height: 26,
              value: Provider.of<DataProvider>(context).heightVal(26, 1),
              color: memColor,
            ),
          ),
          CoordinateOffset(
            X: 0.015,
            Y: 0.016,
            height: 200,
            width: 200,
            child: CircularChartOne(
              height: 26,
              value: Provider.of<DataProvider>(context).heightVal(26, 2),
              color: netColor,
            ),
          ),
          CoordinateOffset(
            X: 0.44,
            Y: 0.61,
            height: 200,
            width: 200,
            child: CircularChartOne(
              height: 26,
              value: Provider.of<DataProvider>(context).heightVal(26, 3),
              color: gpuColor,
            ),
          ),
          const CoordinateOffset(
            X: 0.35,
            Y: 0.68,
            height: 200,
            width: 200,
            child: ErrorMarker(
              diameter: 10,
            ),
          ),
        ],
      ),
    );
  }
}

