import 'package:alcoolgasolina/widgets/loading-button.widget.dart';
import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  var result = "";
  void Function()? resetFunction;

  Success({
    required this.result,
    required this.resetFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(30),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            borderRadius: BorderRadius.circular(60)),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              result,
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 40,
                  fontFamily: "Big Shoulders Display"),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            LoadingButton(
                busy: false,
                func: resetFunction,
                invert: true,
                text: "CALCULAR NOVAMENTE")
          ],
        ));
  }
}
