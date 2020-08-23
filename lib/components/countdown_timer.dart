import 'package:flutter/material.dart';
import 'package:slide_countdown_clock/slide_countdown_clock.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class CountdownTimer extends StatelessWidget {
  final Duration duration;
  final Function setTimerState;

  CountdownTimer(this.duration, this.setTimerState);

  @override
  Widget build(BuildContext context) {
    return SlideCountdownClock(
      duration: this.duration,
      textStyle: TextStyle(
        fontSize: 40,
      ),
      separator: ":",
      onDone: () {
        Alert(
            context: context,
            title: 'Indonesia Maju Hackfest',
            desc: 'It\'s 30 minutes already! \nLet\'s wash your hands',
            image: Image.asset('assets/hand-wash.png'),
            closeFunction: () {
              this.setTimerState(false);
              Future.delayed(
                  Duration(milliseconds: 500), () => this.setTimerState(true));
            }).show();
      },
    );
  }
}
