import 'package:caraoucoroa/TelaResultado.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'dart:math';

class TelaPrincipal extends StatelessWidget {
  int Sorteio(){
    return  Random().nextInt(2);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("imagens/logo.png"),
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: FlatButton(
                  child: Image.asset("imagens/botao_jogar.png"),
                  onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => TelaResultado(Sorteio())
                        )
                      );
                  },
                ),
              )
            ],
          ),
        )
      )
    );
  }
}
