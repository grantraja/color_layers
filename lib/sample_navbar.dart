import 'package:flutter/material.dart';

import 'colors.dart' as color;

BottomNavigationBar sampleNavBar() => BottomNavigationBar(
    backgroundColor: color.oneLayerColor,
    selectedItemColor: color.zeroBaseColor,
    // selectedIconTheme: IconThemeData(color: color.oneLayerAccentColor,),
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.access_alarm,
          color: color.zeroBaseColor,
          ),
          label: "Text",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.work_history_sharp,
          color: color.zeroBaseColor,
          ),
          label: "Text",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.adb_outlined,
          color: color.zeroBaseColor,
          ),
          label: "Text",
        ),
      ],
    );
