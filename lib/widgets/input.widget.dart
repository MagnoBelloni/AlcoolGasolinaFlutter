import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class Input extends StatelessWidget {
  var label = "";
  var ctrl = MoneyMaskedTextController();

  Input({Key? key, required this.label, required this.ctrl}) : super(key: key);

  //Input({required this.label, required this.ctrl});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          alignment: Alignment.centerRight,
          child: Text(
            label,
            style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontFamily: "Big Shoulders Display"),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
            child: TextFormField(
                controller: ctrl,
                keyboardType: TextInputType.number,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontFamily: "Big Shoulders Displa"),
                decoration: InputDecoration(border: InputBorder.none)))
      ],
    );
  }
}
