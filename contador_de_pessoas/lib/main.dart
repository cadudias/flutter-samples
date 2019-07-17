import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      // o runApp recebe um widger MaterialApp
      title: "Contadsor de Pessoas",
      home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _people = 0;
  String _infoText = "Pode entrar!";

  void _changePeople(int delta)
  {
    // setState executa o codigo e atualiza  atela, só refaz as partes modificadas
    setState((){
      _people += delta;

      if(_people < 0)
      {
        _infoText = "Mundo invertido";
      }
      else if(_people <= 10)
      {
        _infoText = "Pode Entrar";
      }else
      {
        _infoText = "Lotado!";
      }
    });
  }

  @override
  // essa função build é chamada sempre que queremos modificar alguma coisa no nosso layout
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Image.asset(
        "images/restaurant.jpg",
        fit: BoxFit.cover,
        height: 1000.0,
      ),
      Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Text("Pesssoas: $_people",
            style:
            TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: FlatButton(
                child: Text(
                    "+1",
                    style: TextStyle(fontSize: 40.0, color: Colors.white)
                ),
                onPressed: () {
                  _changePeople(1);
                }),
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: FlatButton(
                  child: Text(
                      "-1",
                      style: TextStyle(fontSize: 40.0, color: Colors.white)
                  ),
                  onPressed: () {
                    _changePeople(-1);
                  }))
        ]),
        Text(_infoText,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30.0))
      ]) // as telas tbm soa widgets
    ]);
  }
}
