import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60,
        ),
        Image.asset(
          "assets/images/aog-white.png",
          height: 120,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Álcool ou gasolina",
          style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontFamily: "Big Shoulders Display"),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
