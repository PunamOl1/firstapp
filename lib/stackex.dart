//

import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  const StackExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
//       body: Column(
//         children: [
//           SafeArea(
//             child: Container(
//                 child: Center(
//               child: CircleAvatar(
//                 radius: 100,
//                 backgroundImage: AssetImage('images/pnm.png'),
//               ),
//             )),
//           ),

      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              right: 120,
              child: Container(
                width: 190,
                height: 300,
                color: Colors.teal,
                child: const Text(
                  '',
                  textScaleFactor: 2,
                  textAlign: TextAlign.end,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
