import 'package:flutest/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:timer_count_down/timer_count_down.dart';

class CountDown extends StatelessWidget {
  const CountDown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('March 2020 - Apologize'),
      ),
      body: new Center(
        child: Countdown(seconds: 10,
            build: (BuildContext context, double time) => Text(time.toString(),
            style: TextStyle(fontSize: 100, color: Colors.red),),
        interval: Duration(milliseconds: 100),
          onFinished: (){
          Navigator.pop(
            context, MaterialPageRoute(builder: (context) => HomePage()),
          );
          },
        ),
      )
    );
  }
}
