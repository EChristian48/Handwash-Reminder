import 'package:flutter/material.dart';
import 'package:slide_countdown_clock/slide_countdown_clock.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class CountdownTimer extends StatefulWidget {
  @override
  _CountdownTimerState createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  @override
  Widget build(BuildContext context) {
    return SlideCountdownClock(
      duration: Duration(minutes: 30),
      textStyle: TextStyle(
        fontSize: 40,
      ),
      separator: ":",
      onDone: () {
        Alert(
                context: context,
                title: 'Indonesia Maju Hackfest',
                desc: 'It\'s 30 minutes already! \nLet\'s wash your hands',
                image: Image.asset('assets/hand-wash.png'))
            .show();
      },
    );
  }
}
