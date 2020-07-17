import 'package:flutter/material.dart';
class HomePageTemp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<HomePageTemp> {

  final opciones = ['uno', 'dos', 'tres', 'cuatro'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: _crearItemsCorta(),
      ),
    );
  }

  List<Widget> _crearItems(){
    List<Widget> list = new List<Widget>();

    opciones.forEach((element) {
      list..add(ListTile(title: Text(element)))
      ..add(Divider(height: 10, color: Colors.black));
    });

    return list;
  }

  List<Widget> _crearItemsCorta(){
    return opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(title: Text(item + '!!'), 
          subtitle: Text(item + ' - 2'),
          leading: Icon(Icons.accessibility_new),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: ()=>{},
          ),
          Divider(color: Colors.black, height: 5,)
        ],
      );
    }).toList();
  }

}