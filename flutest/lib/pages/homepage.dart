import 'package:flutest/pages/countdown.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text("Countdown Timer of 272"),
        ),
        body: new Center(
          child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new CountDown()));
              },
              icon: Icon(Icons.phone_android),
              label: Text("Click me")),
        ));
  }
}
