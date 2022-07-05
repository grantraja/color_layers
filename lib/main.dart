import 'package:color_layers/number_gen.dart';
import 'package:flutter/material.dart';
import 'package:color_layers/layers.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DataProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Color Layers'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void dispose() {
    Provider.of<DataProvider>(context).gen = false;
    super.dispose();
  }

  // @override
  // void initState() {
  //   numberGen();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    // numberGen();
    // Provider.of<DataProvider>(context).
    // context.read<DataProvider>().gen = true;
    return const Layers();
  }
}
