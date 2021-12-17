import 'package:flutter/material.dart';

class MyButtons extends StatefulWidget {
  const MyButtons({Key? key}) : super(key: key);

  @override
  _MyButtonsState createState() => _MyButtonsState();
}

class _MyButtonsState extends State<MyButtons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 10),
            TextButton(
                style: TextButton.styleFrom(
                    side: const BorderSide(color: Colors.purple, width: 5),
                    //shape: RoundedRectangleBorder(borderRadius.circular(32)),
                    minimumSize: Size(150, 75),
                    padding: const EdgeInsets.all(15),
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 25),
                    primary: Colors.white,
                    backgroundColor: Colors.red,
                    elevation: 20,
                    shadowColor: Colors.purple),
                onPressed: () {},
                child: const Text("TextButton")),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: () {}, child: const Text("elevated")),
            const SizedBox(height: 10),
            OutlinedButton(onPressed: () {}, child: const Text("outlined")),
            const SizedBox(height: 17),
            ElevatedButton(onPressed: () {}, child: Icon(Icons.wifi)),
            const SizedBox(height: 10),
            OutlinedButton(onPressed: () {}, child: const Text("outlined")),
          ],
        ),
      ),
    );
  }
}
