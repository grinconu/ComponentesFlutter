import 'package:flutter/material.dart';

import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icon_string.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 5,
          title: Text('Componentes',style: TextStyle(color: Colors.black),),
        ),
        body: SafeArea(
          child: _list(),
        ),
      ),
    );
  }

  Widget _list() {

    //menuProvider.cargarData();

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
        
        return ListView(
          children: _listItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listItems(List<dynamic> data, BuildContext context) {
    var widgets = new List<Widget>();

    data.forEach((element) {
      widgets.add(ListTile(
        title: Text(element['texto']),
        leading: getICon(element['icon']),
        trailing: Icon(Icons.arrow_right),
        onTap: (){
          //final route = MaterialPageRoute(builder: (context){ return  AlertPage();});
          //Navigator.push(context, route);
          Navigator.pushNamed(context, element['ruta']);
        },
      ));
    });

    return widgets;
  }
}