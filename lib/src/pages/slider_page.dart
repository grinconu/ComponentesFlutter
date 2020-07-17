import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valueSlider = 50.0;
  bool _statusCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders - Check'),
      ),
      body: Container(
        padding: EdgeInsets.all(50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheck(),
            _crearSwitch(),
            _crearImagen(),
          ],
        ),
      ),
    );
  }

  _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: _valueSlider.toString(),
      divisions: 100,
      value: _valueSlider,
      min: 50,
      max: 400,
      onChanged: _statusCheck ? null : (value){
          setState(() {
            _valueSlider = value;
          });
      },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTptO5i8bWicDPuEUTjSf5Yk3JdgehraZoCUA&usqp=CAU'),
      width: _valueSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheck() {

    return CheckboxListTile(
      title: Text('Bloquear tamaño imagen'),
      value: _statusCheck,
      onChanged: (value){
        setState(() {
          _statusCheck = value;
        });
      }
    );

    return Checkbox(
      value: _statusCheck,
      onChanged: (value){
        setState(() {
          _statusCheck = value;
        });
      },
    );
  }

  Widget _crearSwitch() {
  return SwitchListTile(
      title: Text('Bloquear tamaño imagen'),
      value: _statusCheck,
      onChanged: (value){
        setState(() {
          _statusCheck = value;
        });
      }
    );
  }
}