import 'dart:math';

import 'package:flutter/material.dart';

class WidgetDayPage extends StatefulWidget {
  WidgetDayPage({Key key}) : super(key: key);

  @override
  _WidgetDayPageState createState() => _WidgetDayPageState();
}

class _WidgetDayPageState extends State<WidgetDayPage> {

  Color _color = Colors.blue;
  var _duration = Duration(seconds: 4);
  var _height = 100.0;
  var _width = 200.0;
  var _opacity = 1.0;
  var _borderRadius = BorderRadius.circular(8);
  var _aligment = Alignment.center;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Day'),
      ),
      body:  Column(
        children: <Widget>[
          _wrapHorizontal(),
          AnimatedOpacity(
            opacity: _opacity,
            duration: _duration,
            curve: Curves.easeInCubic,
            child: Container(
              color: Colors.orange,
              child: _wrapVertical(),
            ),
          ),
          SizedBox(height: 10,),
          _animatedContainer()
        ],
      )
    );
  }

  Widget _wrapHorizontal(){
    return Wrap(
      direction: Axis.horizontal,
      spacing: 10.0,
      runSpacing: 20,
      children: <Widget>[
        Text('Warp1'),
        Text('Warp2'),
        Text('Warp3'),
        Text('Warp4'),
        Text('Warp5'),
        Text('Warp6'),
        Text('Warp7'),
        Text('Warp8'),
        Text('Warp9'),
        Text('Warp10')
      ],
    );
  }

  Widget _wrapVertical(){
    return Wrap(
      direction: Axis.vertical,
      verticalDirection: VerticalDirection.up,
      spacing: 10.0,
      runSpacing: 20,
      children: <Widget>[
        Text('Warp1'),
        Text('Warp2'),
        Text('Warp3'),
        Text('Warp4'),
        Text('Warp5')
      ],
    );
  }

  Widget _animatedContainer(){
    return GestureDetector(
      onTap: _changeAnimated,
      child: AnimatedContainer(
        decoration: BoxDecoration(
          color: _color,
          borderRadius: _borderRadius,
        ),
        height: _height,
        width: _width,
        alignment: _aligment,
        duration: _duration,
        curve: Curves.fastOutSlowIn,
      ),
    );
  }

  void _changeAnimated(){
    setState(() {
      final random = Random();
      
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();

      _color = Color.fromRGBO(
        random.nextInt(255),
        random.nextInt(255),
        random.nextInt(255),
        1
      );

      _borderRadius =
          BorderRadius.circular(random.nextInt(100).toDouble());

      _duration = new Duration(seconds: random.nextInt(10));

      _opacity = _opacity == 0 ? 1 : 0;

    });
  }

}