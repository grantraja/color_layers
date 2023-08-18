import 'package:color_layers/circular_chart.dart';
import 'package:color_layers/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'number_gen.dart';

class CompDiagram extends StatelessWidget {
  final double height;
  late final double unit;
  // double width;
  CompDiagram({
    required this.height,
    // required this.width,
    super.key,
  }) {
    unit = height / 200;
  }

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        height: height,
        width: height * 0.8,
        decoration: BoxDecoration(
          color: Colors.green[100],
          borderRadius: BorderRadius.circular(unit * 5),
          border: Border.all(
            color: Colors.black,
          ),
        ),
        child: Stack(
          children: [
            ...boardBackground,
            //CPU Chart
            Align(
              alignment: const FractionalOffset(0.58, 0.4),
              child: CircularChartOne(
                height: unit*35,
                value: Provider.of<DataProvider>(context).heightVal((unit*35).toInt(), 0),
                color: cpuColor,
              ),
            ),
            //MEM Chart
            Align(
              alignment: const FractionalOffset(1, 0.05),
              child: CircularChartOne(
                height: unit*35,
                value: Provider.of<DataProvider>(context).heightVal((unit*35).toInt(), 1),
                color: memColor,
              ),
            ),
            //NET Chart
            Align(
              alignment: const FractionalOffset(0.05, 0.2),
              child: CircularChartOne(
                height: unit*35,
                value: Provider.of<DataProvider>(context).heightVal((unit*35).toInt(), 2),
                color: netColor,
              ),
            ),
            //GPU Chart
            Align(
              alignment: const FractionalOffset(0.8, 0.8),
              child: CircularChartOne(
                height: unit*35,
                value: Provider.of<DataProvider>(context).heightVal((unit*35).toInt(), 3),
                color: gpuColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> get boardBackground {
    return [
      //Network IO
      Align(
        alignment: const FractionalOffset(0, 0.1),
        child: Container(
          height: unit * 100,
          width: unit * 20,
          decoration: innerBoardDeco(),
        ),
      ),
      //GPU Body
      Align(
        alignment: const FractionalOffset(0, 0.8),
        child: Container(
          height: unit * 20,
          width: unit * 140,
          decoration: innerBoardDeco(),
        ),
      ),
      //GPU Board
      Align(
        alignment: const FractionalOffset(0.2, 0.85),
        child: Container(
          height: unit * 2,
          width: unit * 130,
          decoration: innerBoardDeco(),
        ),
      ),
      //CPU
      Align(
        alignment: const FractionalOffset(0.45, 0.3),
        child: Container(
          height: unit * 40,
          width: unit * 40,
          decoration: innerBoardDeco(),
        ),
      ),
      //RAM 1
      Align(
        alignment: const FractionalOffset(0.78, 0.15),
        child: Container(
          height: unit * 80,
          width: unit * 3,
          decoration: innerBoardDeco(),
        ),
      ),
      //RAM 2
      Align(
        alignment: const FractionalOffset(0.81, 0.15),
        child: Container(
          height: unit * 80,
          width: unit * 3,
          decoration: innerBoardDeco(),
        ),
      ),
      //RAM 3
      Align(
        alignment: const FractionalOffset(0.84, 0.15),
        child: Container(
          height: unit * 80,
          width: unit * 3,
          decoration: innerBoardDeco(),
        ),
      ),
      //RAM 3
      Align(
        alignment: const FractionalOffset(0.87, 0.15),
        child: Container(
          height: unit * 80,
          width: unit * 3,
          decoration: innerBoardDeco(),
        ),
      ),
    ];
  }

  BoxDecoration innerBoardDeco() {
    return BoxDecoration(
      color: Colors.grey[300],
      border: Border.all(
        color: Colors.black,
      ),
    );
  }
}
