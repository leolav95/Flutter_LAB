import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('I am Poor'),
          backgroundColor: Colors.blue[200],
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/chihuahua.png'),
          ),
        ),
      ),
    ),
  );
}
