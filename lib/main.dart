import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(AppDado());
  // var rng = new Random();
  // for (var i = 0; i < 1; i++) {
  //   print(rng.nextInt(6));
  // }
}

class AppDado extends StatefulWidget {
  @override
  _AppDadoState createState() => _AppDadoState();
}

class _AppDadoState extends State<AppDado> {
  int nextDiceImage = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          // elevation: 0.0,
          backgroundColor: Colors.black,
          title: Center(child: Text('Moviles 2 Dado Random')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'GIOVANNI DANIEL BRITO LÓPEZ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              ),
              // style: Theme.of(context).textTheme.headline6,
            ),
            Spacer(),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Image.asset('/dados/$nextDiceImage.png'),
                ),
              ),
            ),
            Spacer(),
            RaisedButton(
              onPressed: () {
                setState(() {
                  nextDiceImage = Random().nextInt(6) + 1;
                });
              },
              child: Text('Gira el dado'),
            )
          ],
        ),
      ),
    );
  }
}
