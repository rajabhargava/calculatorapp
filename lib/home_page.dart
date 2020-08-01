import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;
  final TextEditingController t1 = new TextEditingController(text: "");
  final TextEditingController t2 = new TextEditingController(text: "");

  void doAdd() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void doClear() {
    setState(() {
      t1.text = "";
      t2.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Calculator"),
        ),
        body: new Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(hintText: "Enter number"),
                controller: t1,
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(hintText: "Enter number"),
                controller: t2,
              ),
              new Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 40.0)),
              new Text(
                "Output: $sum",
                style: new TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent),
              ),
              new Padding(padding: const EdgeInsets.only(top: 20.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    onPressed: doAdd,
                    child: new Text(
                      "+",
                      style: new TextStyle(fontSize: 32.0),
                    ),
                    textColor: Colors.purple,
                    color: Colors.white54,
                  ),
                  new MaterialButton(
                    onPressed: doSub,
                    child: new Text(
                      "-",
                      style: new TextStyle(fontSize: 32.0),
                    ),
                    textColor: Colors.purple,
                    color: Colors.white54,
                  ),
                ],
              ),
              new Padding(padding: const EdgeInsets.only(top: 20.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    onPressed: doMul,
                    child: new Text(
                      "*",
                      style: new TextStyle(fontSize: 32.0),
                    ),
                    textColor: Colors.purple,
                    color: Colors.white54,
                  ),
                  new MaterialButton(
                    onPressed: doDiv,
                    child: new Text(
                      "/",
                      style: new TextStyle(fontSize: 32.0),
                    ),
                    textColor: Colors.purple,
                    color: Colors.white54,
                  ),
                ],
              ),
              new Padding(padding: const EdgeInsets.only(top: 20.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new MaterialButton(
                    onPressed: doClear,
                    child: new Text(
                      "Clear",
                      style:
                          new TextStyle(fontSize: 20.0, color: Colors.purple),
                    ),
                    color: Colors.white54,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
