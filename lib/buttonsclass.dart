import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  String first = '';
  String second = '';
  int sum = 0;

  bool validateFirstname = false;
  bool validateLastname = false;

  ///step-1

  TextEditingController mycontroller = TextEditingController();
  TextEditingController mycontroller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons Practice"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: mycontroller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "FirstNum",
                  hintText: "Your first num here...",
                  errorText:
                      validateFirstname ? "field cannot emptybe " : null),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
                controller: mycontroller2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "SecondNum",
                    hintText: "Your second num here...",
                    errorText:
                        validateLastname ? "field cannot emptybe " : null)),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  first = mycontroller.text;
                  first.isEmpty
                      ? validateFirstname = true
                      : validateFirstname = false;
                  second = mycontroller2.text;
                  second.isEmpty
                      ? validateLastname = true
                      : validateLastname = false;
                  if (first.isNotEmpty && second.isNotEmpty) {
                    sum = int.parse(first) + int.parse(second);
                  } else {
                    sum = 0;
                  }
                });
              },
              child: const Text("SUM")),
          const SizedBox(height: 20),
          Text("$sum"),
        ],
      ),
    );
  }
}
