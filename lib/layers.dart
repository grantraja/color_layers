import 'package:color_layers/board.dart';
import 'package:color_layers/sample_drawer.dart';
import 'package:color_layers/sample_navbar.dart';
import 'package:color_layers/sample_rows.dart';
import 'sample_chart.dart';
import 'package:flutter/material.dart';
import 'colors.dart' as color;

class Layers extends StatelessWidget {
  const Layers({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    // print(MediaQuery.of(context).size.height - Scaffold.of(context).appBarMaxHeight);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Title"),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.wrap_text_sharp,
            ),
          )
        ],
        backgroundColor: color.oneLayerColor,
        foregroundColor: color.zeroBaseColor,
      ),
      drawer: sampleDrawer(),
      backgroundColor: color.zeroBaseColor,
      bottomNavigationBar: sampleNavBar(),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Expanded(
            child: Card(
              color: color.oneBaseColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const BoardDiagram(),
                    sampleChart(context),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Card(
              color: color.oneBaseColor,
              child: const SampleRow(),
            ),
          ),
          Expanded(
            child: Card(
              color: color.oneBaseColor,
              child: const SampleRow(),
            ),
          ),
        ],
      ),
    );
  }
}
