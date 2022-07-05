import 'package:flutter/cupertino.dart';

class BoardDiagram extends StatelessWidget {
  const BoardDiagram({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/board.png'),
      ],
    );
  }
}

class CoordinateOffset extends StatelessWidget {
  final Widget child;
  final double X;
  final double Y;
  final double height;
  final double width;
  const CoordinateOffset({
    required this.child,
    required this.X,
    required this.Y,
    required this.height,
    required this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Column(
        children: [
          SizedBox(
            height: height/Y,
          ),
          Row(
            children: [
              SizedBox(
                width: width/X,
              ),
              child,
            ],
          )
        ],
      ),
    );
  }
}
