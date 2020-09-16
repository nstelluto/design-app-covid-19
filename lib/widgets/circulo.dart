import 'package:flutter/material.dart';

class Bola extends StatelessWidget {
  Color cor = Colors.red;
  String nomeCor = "Vermelho";

  Bola({this.cor, this.nomeCor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(500),
            color: this.cor,
          ),
          width: MediaQuery.of(context).size.width / 1.5,
          height: MediaQuery.of(context).size.height / 2.5,
          child: Center(
            child: Text(
              this.nomeCor,
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
