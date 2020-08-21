import 'package:flutter/material.dart';
import 'switch_widget.dart';
import 'components/countdown_timer.dart';

void main() => runApp(HomePage());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.grey.shade300,
//         body: Column(
//           children: [
//             SafeArea(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Container(
//                     margin: EdgeInsets.only(top: 16, right: 16),
//                     width: 50,
//                     height: 50,
//                     child: SwitchWidget(),
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 child: CountdownTimer(),
//               ), // the countdown goes here
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var isTimerStarted = false;

  setTimerState(bool state) {
    setState(() {
      isTimerStarted = state;
    });
  }

  @override
  Widget build(BuildContext context) {
    var timer = isTimerStarted ? CountdownTimer() : Text('NYALAIN WOI');

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
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
              child: Container(
                child: timer,
              ), // the countdown goes here
            ),
          ],
        ),
      ),
    );
  }
}
