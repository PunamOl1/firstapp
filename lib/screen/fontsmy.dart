import 'package:flutter/material.dart';

class MyFonts extends StatelessWidget {
  const MyFonts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/pnm.png'),
            ),
            const Text(
              'PUNAM',
              style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico-Regular'),
            ),
            const Text(
              'Flutter Developer',
              style: TextStyle(
                fontFamily: 'SourceSansPro-LightItalic.ttf',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              //padding: const EdgeInsets.all(10.0),
              color: Colors.white,
              child: Row(
                children: [
                  //padding: const EdgeInsets.all(15.0),
                  Icon(
                    Icons.phone,
                    color: Colors.teal[900],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '977-98512**911',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
            Card(
              color: Colors.white,
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              // padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.teal.shade900,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'iampnm@gmail.com',
                    style: TextStyle(fontSize: 20, color: Colors.teal.shade900),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//     return Scaffold(
//       backgroundColor: Colors.green,
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
//           SizedBox(
//             height: 20,
//           ),
//           Text(
//             "this is dice roller",
//             style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//                 fontFamily: "Roboto-Italic"),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Text(
//             "this is dice roller",
//             style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 12,
//                 fontWeight: FontWeight.bold,
//                 fontFamily: "Roboto-Italic"),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Center(
//             child: Card(
//               margin: const EdgeInsets.all(10.0),
//               color: Colors.white,
//               width: 189.0,
//               height: 40.0,
//               child: Row(
//                 children: [
//                   Icon(Icons.call),
//                   Container(
//                     margin: const EdgeInsets.all(14.0),
//                     child: Text("okay here"),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           Center(
//             child: Container(
//               margin: const EdgeInsets.all(10.0),
//               color: Colors.white,
//               width: 189.0,
//               height: 40.0,
//               child: Row(
//                 children: [
//                   Icon(Icons.call),
//                   Container(
//                     margin: const EdgeInsets.all(14.0),
//                     child: Text("okay here"),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
