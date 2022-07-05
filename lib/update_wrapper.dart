// import 'package:flutter/material.dart';

// class UpdatingWrapper extends StatefulWidget {
//   Widget child;
//   UpdatingWrapper({required this.child, super.key});

//   @override
//   State<UpdatingWrapper> createState() => _UpdatingWrapperState();
// }

// class _UpdatingWrapperState extends State<UpdatingWrapper> {
//   bool run = true;
//   late Widget child; // = widget.child;

//   @override
//   void dispose() {
//     run = false;
//     super.dispose();
//   }

//   @override
//   void initState() {
//     update();
//     super.initState();
//   }

//   void update() async {
//     child = widget.child;
//     setState(() {
//       ///widget.key = UniqueKey();
//     });
//     await Future.delayed(const Duration(seconds: 1));
//     if (run) update();
//   }

//   @override
//   Widget build(BuildContext context) {
    
//     return widget.child;
//   }
// }




// /*
// hawaii roll
// yellowtail roll
// spicy tuna roll
// spicy salmon roll
// salmon skin roll
// tuna roll
// */