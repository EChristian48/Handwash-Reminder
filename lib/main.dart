import 'package:flutter/material.dart';
import 'switch_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                    child: SwitchWidget(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(), // the countdown goes here
            ),
          ],
        ),
      ),
    );
  }
}
