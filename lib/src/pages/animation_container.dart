import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  AnimatedContainerPage({Key key}) : super(key: key);

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {

  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.cyan;
  int _count = 10;
  int _countActu = 0;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(5.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Animated Container'),
       ),
       body: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            curve: Curves.easeOutExpo,
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              borderRadius: _borderRadius,
              color: _color
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.play_arrow),
            onPressed: ()=>_changeContainer(),
          ),
    );
  }

  void _changeContainer(){
      final random = Random();
      setState(() {
        _width = random.nextInt(300).toDouble();
        _height = random.nextInt(300).toDouble();
        _color = Color.fromRGBO(
          random.nextInt(255), 
          random.nextInt(255), 
          random.nextInt(255), 
          1);
          _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
      });
  }

}