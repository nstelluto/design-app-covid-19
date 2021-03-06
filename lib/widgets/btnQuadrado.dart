import 'package:flutter/material.dart';

class btnQuadrado extends StatelessWidget {
  Color cor = Colors.red;
  Function callback;

  btnQuadrado({this.cor, this.callback});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: 60,
          decoration: BoxDecoration(
            color: this.cor,
          ),
          child: Center(
              child: Text(
            'Entrar',
            style: TextStyle(color: Colors.white, fontSize: 24),
          )),
        ),
      ),
      onTap: () {
        this.callback();
      },
    );
  }
}
