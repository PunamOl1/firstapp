import 'package:flutter/material.dart';

class myText extends StatefulWidget {
  const myText({Key? key}) : super(key: key);

  @override
  _myTextState createState() => _myTextState();
}

class _myTextState extends State<myText> {
  String name = '';
  bool validateFirstname = false;
  bool validateLastname = false;

  ///step-1

  TextEditingController mycontroller = TextEditingController();
  TextEditingController mycontroller2 = TextEditingController();

  @override
  void dispose() {
    mycontroller.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField Retrieve"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
                controller: mycontroller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Name",
                    hintText: "Your name here...",
                    errorText:
                        validateFirstname ? "field cannot emptybe " : null)),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
                controller: mycontroller2,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "LastName",
                    hintText: "Your lastname here...",
                    errorText:
                        validateLastname ? "field cannot emptybe " : null)),
          ),
          const SizedBox(height: 20),
          Text(mycontroller.text + mycontroller2.text),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                name = mycontroller.text;
                name.isEmpty
                    ? validateFirstname = true
                    : validateFirstname = false;
                name = mycontroller2.text;
                name.isEmpty
                    ? validateLastname = true
                    : validateLastname = false;
              });
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
