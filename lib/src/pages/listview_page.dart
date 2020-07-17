import 'dart:async';

import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  ScrollController _scrollController = new ScrollController();

  List<int> _numeros = new List();
  int _lastItem = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _addImages();

    _scrollController.addListener(() {
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent)
        //_addImages();
        _fetchData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: Stack(
        children: <Widget>[
          _crearList(),
          _crearLoading()
        ],
      ),
    );
  }

  _crearList() {
    return RefreshIndicator(
      onRefresh: obtenerPagina,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: _numeros.length,
        itemBuilder: (context, index){
          return FadeInImage(
            image: NetworkImage('https://picsum.photos/500/300?random=${_numeros[index]}'),
            placeholder: AssetImage('assets/jar-loading.gif'),
          );
        },
      ),
    );
  }

  Future<Null> obtenerPagina() async {
    new Timer(Duration(seconds: 2), (){
      _numeros.clear();
      _lastItem++;
      _addImages();
    });

    return Future.delayed(Duration(seconds: 2));
  }

  void _addImages(){
    for (var i = 1; i < 10; i++) {
      _lastItem++;
      _numeros.add(_lastItem);
    }
    setState(() {});
  }

  Future _fetchData() async {
    _isLoading = true;
    setState(() {});

    new Timer(Duration(seconds: 2), _responseHttp);
  }

  void _responseHttp(){
    _isLoading = false;
    _scrollController.animateTo(
      _scrollController.position.pixels+200, 
    duration: Duration(milliseconds: 250), 
    curve: Curves.linear);
    _addImages();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  Widget _crearLoading() {
    if(_isLoading)
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator()
            ],
          ),
          SizedBox(height: 15,)
        ],
      );
    else
      return Container();
  }

}