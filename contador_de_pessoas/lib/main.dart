import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      // o runApp recebe um widger MaterialApp
      title: "Contadsor de Pessoas",
      home: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Pesssoas: 0",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            Row(children: <Widget>[
              FlatButton(
                  child: Text("+1",
                      style: TextStyle(fontSize: 40.0, color: Colors.white)),
                  onPressed: () {}),
              FlatButton(
                  child: Text("+1",
                      style: TextStyle(fontSize: 40.0, color: Colors.white)),
                      onPressed: () {})
            ]),
            Text("Pode Entrar",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0))
          ]) // as telas tbm soa widgets
      ));
}
