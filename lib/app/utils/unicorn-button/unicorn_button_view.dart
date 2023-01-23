// import 'package:flutter/material.dart';
// import 'package:unicorndial/unicorndial.dart';

// class UniconrnButtonView extends StatefulWidget {
//   const UniconrnButtonView({super.key});

//   @override
//   _UnicornButtonView createState() => _UnicornButtonView();
// }

// class _UnicornButtonView extends State<UniconrnButtonView> {
//   @override
//   Widget build(BuildContext context) {
//     var childButtons = <UnicornButton>[];

//     childButtons.add(UnicornButton(
//         hasLabel: true,
//         labelText: "Choo choo",
//         currentButton: FloatingActionButton(
//           heroTag: "train",
//           backgroundColor: Colors.redAccent,
//           mini: true,
//           child: const Icon(Icons.train),
//           onPressed: () {},
//         )));

//     childButtons.add(UnicornButton(
//         currentButton: FloatingActionButton(
//             heroTag: "airplane",
//             backgroundColor: Colors.greenAccent,
//             mini: true,
//             onPressed: () {},
//             child: const Icon(Icons.airplanemode_active))));

//     childButtons.add(UnicornButton(
//         currentButton: FloatingActionButton(
//             heroTag: "directions",
//             backgroundColor: Colors.blueAccent,
//             mini: true,
//             onPressed: () {},
//             child: const Icon(Icons.directions_car))));

//     return Scaffold(
//         floatingActionButton: UnicornDialer(
//             backgroundColor: const Color.fromRGBO(255, 255, 255, 0.6),
//             parentButtonBackground: Colors.redAccent,
//             orientation: UnicornOrientation.VERTICAL,
//             parentButton: const Icon(Icons.add),
//             childButtons: childButtons),
//         appBar: AppBar(),
//         body: Center(
//             child: ElevatedButton(
//           child: const Text('Hello World'),
//           onPressed: () {
//             setState(() {});
//           },
//         )));
//   }
// }
