import 'package:color_layers/colors.dart' as color;
import 'package:flutter/material.dart';

Drawer sampleDrawer() => Drawer(
      backgroundColor: color.oneBaseColor,
      child: Column(
        children: [
          Container(
            height: 120,
            padding: const EdgeInsets.only(
              bottom: 1,
            ),
            color: color.oneLayerColor,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(
                  color: color.oneBaseColor,
                  child: Icon(
                    Icons.person,
                    size: 100,
                    color: color.oneLayerColor,
                  ),
                ),
                Container(
                  alignment: AlignmentDirectional.bottomStart,
                  padding: const EdgeInsets.only(
                    bottom: 10,
                    left: 10,
                  ),
                  child: Text(
                    "Drawer",
                    textScaleFactor: 3,
                    style: TextStyle(
                      color: color.oneBaseColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            focusColor: color.zeroLayerAccentColor,
            // hoverColor: color.zeroLayerAccentColor,
            // selectedColor: color.zeroLayerAccentColor,

            onTap: (() {}),
            textColor: color.oneBaseColor,
            title: const Text("Text"),
            tileColor: color.zeroLayerColor,
          ),
          ListTile(
            onTap: (() {}),
            textColor: color.oneBaseColor,
            title: const Text("Text"),
            tileColor: color.zeroLayerColor,
          ),
          const Spacer(),
          ListTile(
            onTap: (() {}),
            textColor: color.oneBaseColor,
            title: const Text("Text"),
            tileColor: color.oneLayerColor,
          ),
        ],
      ),
    );
