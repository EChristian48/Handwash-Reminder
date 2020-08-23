import 'package:flutter/material.dart';
import 'components/countdown_timer.dart';
import 'components/switch_widget.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var isTimerStarted = false;

  void setTimerState(bool state) {
    setState(() {
      isTimerStarted = state;
    });
  }

  @override
  Widget build(BuildContext context) {
    var timer = isTimerStarted
        ? CountdownTimer(Duration(minutes: 30), setTimerState)
        : Text(
            'Turn on the switch if you are going outside the house',
            style: TextStyle(
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          );

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFc5eff7),
        body: Column(
          children: [
            SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 16, right: 16),
                    width: 50,
                    height: 50,
                    child: SwitchWidget(setTimerState),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: timer,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
