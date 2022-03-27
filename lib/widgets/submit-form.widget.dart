import 'package:flutter/material.dart';
import 'package:alcoolgasolina/widgets/loading-button.widget.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'input.widget.dart';

class SubtmitForm extends StatelessWidget {
  var gasolinaCtrl = MoneyMaskedTextController();
  var alcoolCtrl = MoneyMaskedTextController();
  var busy = false;
  void Function()? submitFunc;

  SubtmitForm(
      {required this.gasolinaCtrl,
      required this.alcoolCtrl,
      required this.busy,
      required this.submitFunc});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Input(label: "Gasolina", ctrl: gasolinaCtrl),
        ),
        Padding(
          padding: EdgeInsets.only(left: 12, right: 12),
          child: Input(label: "Álcool", ctrl: alcoolCtrl),
        ),
        SizedBox(height: 25),
        LoadingButton(
            busy: busy, invert: false, func: submitFunc, text: "CALCULAR")
      ],
    );
  }
}
