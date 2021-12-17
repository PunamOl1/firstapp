import 'package:flutter/material.dart';

class Punam extends StatefulWidget {
  const Punam({Key? key}) : super(key: key);

  @override
  _PunamState createState() => _PunamState();
}

class _PunamState extends State<Punam> {
  int sum = 0;
  String firstnum = "";
  String second = "";
  bool validatefirst = false;
  bool validatesecond = false;

  TextEditingController fst = TextEditingController();
  TextEditingController snd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IWEARMYSTORY"),
      ),
      body: Column(
        children: [
          Padding(padding: const EdgeInsets.all(15)),
          Center(
            child: TextField(
              controller: fst,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "punammatters",
                  hintText: "letgo",
                  errorText: validatefirst ? "field cannot be empty" : null,
                  border: OutlineInputBorder()),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: TextField(
              controller: snd,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "punamagain",
                  hintText: "goforit",
                  errorText: validatesecond ? "field  cannot be empty" : null),
            ),
          ),
          SizedBox(
            height: 19,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  firstnum = fst.text;
                  firstnum.isEmpty
                      ? validatefirst = true
                      : validatefirst = false;
                  second = snd.text;
                  second.isEmpty
                      ? validatesecond = true
                      : validatesecond = false;
                  if (firstnum.isNotEmpty && second.isNotEmpty) {
                    sum = int.parse(firstnum) + int.parse(second);
                  } else {
                    sum = 0;
                  }
                });
              },
              child: const Icon(Icons.alarm_on)),
          Text("$sum")
        ],
      ),
    );
  }
}
