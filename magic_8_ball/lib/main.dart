import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Magic 8 Ball",
      home: Ball(),
    ),
  );
}

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Ball()),
              );
            },
            icon: Icon(Icons.arrow_back)),
        title: Text("Settings"),
        backgroundColor: Colors.blue[800],
      ),
      body: Container(
        color: Colors.blue[100],
        child: Card(
          child: ListTile(
            title: Text("Button Orientation"),
            trailing: DropdownButton(
              value: selectedValue,
              items: [
                DropdownMenuItem(child: Text("Right Side"), value: 1),
                DropdownMenuItem(child: Text("Left Side"), value: 2),
              ],
              onChanged: (value) {
                setState(() {
                  selectedValue = value as int;
                });
                if (selectedValue == 1) {}
              },
            ),
          ),
        ),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  final valueRight;
  final valueLeft;

  const Ball({Key? key, this.valueLeft, this.valueRight}) : super(key: key);
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  void shakeBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Magic 8 Ball"),
        backgroundColor: Colors.blue[800],
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Settings()),
                );
              },
              icon: Icon(Icons.settings))
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: TextButton(
                  child: Image(image: AssetImage("images/ball$ballNumber.png")),
                  onPressed: () {
                    shakeBall();
                  }),
            ),
          ),
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 0.0, right: 8.0),
                  child: FloatingActionButton(
                    onPressed: () {
                      shakeBall();
                    },
                    child: Icon(Icons.sync),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
