import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _anim = 'Spin';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: GestureDetector(
        onTap: () {
          setState(() {
            if (_anim == 'Spin') {
              _anim = '';
            } else {
              _anim = 'Spin';
            }
          });
        },
        child: Container(
          width: 100,
          height: 100,
          child: FlareActor('assets/anin_gears.flr', animation: _anim),
        ),
      )),
    );
  }
}
