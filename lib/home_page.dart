import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void doAddition() {
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
      if(num2 != 0) {
        sum = num1 ~/ num2;
      }
    });
  }

  void doClear(){
    setState(() {
      num1 = 0;
      num2 = 0;
      t1.text = "0";
      t2.text = "0";
      sum = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculater"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(20.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Output : $sum",
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.black),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(labelText: "Enter Number one"),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(labelText: "Enter Number Two"),
              controller: t2,
            ),
            new Padding(padding: const EdgeInsets.only(top: 20.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  color: Colors.blue,
                  onPressed: doAddition,
                  child: new Text(
                    "+",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
                new MaterialButton(
                  color: Colors.blue,
                  onPressed: doSub,
                  child: new Text(
                    "-",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  color: Colors.blue,
                  onPressed: doMul,
                  child: new Text(
                    "*",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
                new MaterialButton(
                  color: Colors.blue,
                  onPressed: doDiv,
                  child: new Text(
                    "/",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  color: Colors.blue,
                  onPressed: doClear,
                  child: new Text(
                    "Clear",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
