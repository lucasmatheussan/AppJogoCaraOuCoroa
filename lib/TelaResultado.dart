import 'package:caraoucoroa/TelaPrincipal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TelaResultado extends StatefulWidget {
  int resultado;
  TelaResultado(this.resultado);
  @override
  _TelaResultadoState createState() => _TelaResultadoState();
}

class _TelaResultadoState extends State<TelaResultado> {
  String ImagemResultado(){
    if(this.widget.resultado == 1){
      return "imagens/moeda_coroa.png";
    }else{
      return "imagens/moeda_cara.png";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(ImagemResultado()),
            Padding(
              padding: EdgeInsets.all(32),
              child: FlatButton(
                child: Image.asset("imagens/botao_voltar.png"),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => TelaPrincipal()
                  ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
