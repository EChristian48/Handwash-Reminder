import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  final Function setTimerState;

  SwitchWidget(this.setTimerState);

  @override
  _SwitchWidgetState createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  // 1 = on - off, 2 = off - on, 3 = off, 4 = on
  int switchState = 3;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          switchState = (switchState == 3) ? 2 : 1;
        });
      },
      child: FlareActor(
        "assets/on_off.flr",
        animation: chooseAnimation(switchState),
        callback: (animationName) {
          setState(() {
            if (animationName == "A1") {
              switchState = 3;
              widget.setTimerState(false);
            } else if (animationName == "A2") {
              switchState = 4;
              widget.setTimerState(true);
            }
          });
        },
      ),
    );
  }
}

String chooseAnimation(int animationCode) {
  String animation;

  if (animationCode == 1) {
    animation = "A1";
  } else if (animationCode == 2) {
    animation = "A2";
  } else if (animationCode == 3) {
    animation = "A3";
  } else {
    animation = "A4";
  }

  return animation;
}
