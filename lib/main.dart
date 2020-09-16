import 'dart:math';

import 'package:app_aula03/widgets/btnBorder.dart';
import 'package:app_aula03/widgets/btnQuadrado.dart';
import 'package:app_aula03/widgets/circulo.dart';
import 'package:app_aula03/widgets/quadrado.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aula 03',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Aula 03'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _cor = Colors.red;
  Color _corBotao = Colors.red;
  String _nomeCor = "Vermelho";
  List<Color> listCores = [
    Colors.deepOrangeAccent,
    Colors.pink,
    Colors.purple,
    Colors.lightBlueAccent
  ];

  List<String> listNomeCor = ["Laranja", "Rosa", "Roxo", "Azul"];

  void mudaCor() {
    int indice = Random().nextInt(listCores.length);
    setState(() {
      if (indice == 3) {
        this._nomeCor = "Ganhou!!";
      } else {
        this._nomeCor = this.listNomeCor[indice - 1];
      }
      this._cor = this.listCores[indice - 1];
      this._corBotao = this.listCores[indice - 1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Berinjela'),
        backgroundColor: Colors.purple,
        actions: <Widget>[
          ButtonBar(
            children: <Widget>[
              Icon(Icons.search),
              GestureDetector(
                child: Icon(Icons.star_border),
                onTap: () {
                  print('clicado');
                },
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Bola(cor: this._cor, nomeCor: this._nomeCor),
            Quadrado(cor: this._cor, nomeCor: this._nomeCor),
            btnBorder(cor: this._cor, callback: this.mudaCor),
            btnQuadrado(cor: this._cor, callback: this.mudaCor)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          mudaCor();
        },
        child: Icon(
          Icons.tag_faces,
          size: 40,
          color: Colors.white,
        ),
        backgroundColor: this._corBotao,
        elevation: 9,
        tooltip: 'Sorria',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
