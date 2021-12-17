// import 'package:firstapp/main.dart';
// import 'package:flutter/material.dart';

// class stflExample extends StatefulWidget {
//   const stflExample({Key? key}) : super(key: key);

//   @override
//   _stflExampleState createState() => _stflExampleState();
// }

// class _stflExampleState extends State<stflExample> {
//   String name = '';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             children: [
//               TextField(
//                 onSubmitted: (value) {
//                   setState(() {
//                     name = value;
//                   });
//                 },

//                 //keyboardType: TextInputType.phone,

//                 autocorrect: true,

//                 //obscuringCharacter: '*',

//                 //obscureText: true,

//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),

//                 decoration: InputDecoration(
//                     labelText: 'Name:', hintText: 'Enter your name'),

//                 // icon: Icon(Icons.people),
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               Text(
//                 "your best friend name is",
//                 style: const TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
