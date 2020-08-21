import 'package:flutter/material.dart';
import 'package:slide_countdown_clock/slide_countdown_clock.dart';

class CountdownTimer extends StatefulWidget {
  @override
  _CountdownTimerState createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  @override
  Widget build(BuildContext context) {
    return SlideCountdownClock(duration: Duration(seconds: 60));
  }
}
