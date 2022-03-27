import 'package:alcoolgasolina/widgets/success.widget.dart';
import 'package:flutter/material.dart';
import 'package:alcoolgasolina/widgets/logo.widget.dart';
import 'package:alcoolgasolina/widgets/submit-form.widget.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color color = Colors.deepPurple;
  var busy = false;
  var completed = false;
  var resultText = "Compensa utilizar álcool";
  var alcoolCtrl = MoneyMaskedTextController();
  var gasolinaCtrl = MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: AnimatedContainer(
          duration: Duration(milliseconds: 1200),
          color: color,
          child: ListView(
            children: [
              Logo(),
              completed
                  ? Success(result: resultText, resetFunction: reset)
                  : SubtmitForm(
                      gasolinaCtrl: alcoolCtrl,
                      alcoolCtrl: gasolinaCtrl,
                      busy: busy,
                      submitFunc: calculate)
            ],
          )),
    );
  }

  Future? calculate() {
    double alcool =
        double.parse(alcoolCtrl.text.replaceAll(RegExp(r'[,.]'), '')) / 100;

    double gasolina =
        double.parse(alcoolCtrl.text.replaceAll(RegExp(r'[,.]'), '')) / 100;

    double resultado = alcool / gasolina;

    setState(() {
      completed = false;
      busy = true;
      color = Colors.deepPurpleAccent;
    });

    return Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        if (resultado >= 0.7) {
          resultText = "Compensa utilizar Gasolina!";
        } else {
          resultText = "Compensa utilizar Álcool!";
        }

        completed = true;
        busy = false;
      });
    });
  }

  reset() {
    setState(() {
      busy = false;
      completed = false;
      alcoolCtrl = MoneyMaskedTextController();
      gasolinaCtrl = MoneyMaskedTextController();
      color = Colors.deepPurple;
    });
  }
}
