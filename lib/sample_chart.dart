import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'colors.dart' as color;
import 'number_gen.dart';

int chartHeight = 200;

Widget sampleChart(BuildContext context) => Stack(
      children: [
        Center(
          child: Container(
            width: 200,
            height: chartHeight.toDouble(),
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: AnimatedContainer(
                    height: Provider.of<DataProvider>(context)
                        .heightVal(chartHeight, 0),
                    duration: const Duration(seconds: 1),
                    // width: 25,

                    child: Container(
                      color: color.cpuColor,
                    ),
                  ),
                ),
                Expanded(
                  child: AnimatedContainer(
                    height: Provider.of<DataProvider>(context)
                        .heightVal(chartHeight, 1),
                    duration: const Duration(seconds: 1),
                    // width: 25,
                    child: Container(
                      color: color.memColor,
                    ),
                  ),
                ),
                Expanded(
                  child: AnimatedContainer(
                    height: Provider.of<DataProvider>(context)
                        .heightVal(chartHeight, 2),
                    duration: const Duration(seconds: 1),
                    // width: 25,

                    child: Container(
                      color: color.netColor,
                    ),
                  ),
                ),
                Expanded(
                  child: AnimatedContainer(
                    height: Provider.of<DataProvider>(context)
                        .heightVal(chartHeight, 3),
                    duration: const Duration(seconds: 1),
                    // width: 25,

                    child: Container(
                      color: color.gpuColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: Divider(
            color: color.ten,
          ),
        ),
      ],
    );
