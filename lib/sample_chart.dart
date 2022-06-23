import 'package:flutter/material.dart';
import 'colors.dart' as color;

Widget sampleChart() => Stack(
      children: [
        Center(
          child: Container(
            // alignment: AlignmentDirectional.bottomCenter,
            width: 200,
            padding: const EdgeInsets.all(10),
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: SizedBox(
                    height: 100,
                    // width: 25,
                    child: Container(
                      color: color.cpuColor,
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 70,
                    // width: 25,
                    child: Container(
                      color: color.memColor,
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 150,
                    // width: 25,
                    child: Container(
                      color: color.netColor,
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 175,
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
          child: Divider(color: color.ten,),
        ),
      ],
    );
