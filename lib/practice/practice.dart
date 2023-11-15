// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../practice./practice2.dart';
//
// class a extends StatefulWidget {
//    a({super.key});
//
//   @override
//   State<a> createState() => _aState();
// }
//
// class _aState extends State<a> {
//   var name = TextEditingController();
//   var name2   =0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             TextField(
//               controller:name,
//               onChanged: (value) {
//                 setState(() {
//                   name2 = value;
//                 });
//               },
//             ),
//             IconButton(onPressed: (){
//
//               Get.to(() => b());
//             },
//                 icon: Icon(Icons.add))
//           ],
//         ),
//       ),
//     );
//   }
// }
