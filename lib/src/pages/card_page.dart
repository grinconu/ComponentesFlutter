import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30,),
          _cardTipo2(),
        ],
      ),
    );
  }

  //Card utilizando el Widget Card.
  Widget _cardTipo1() {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue,),
            title: Text('Titulo 1'),
            subtitle: Text('asdfujhasdf asdiofjasd aoidsjhf o8wieujrf asd89f asdif89asd asd89f asdf890akjdsf asd98fu asd iuadsf89uads asd98fu adsf asd98fu asdf ads98fu asdf asd89fu aedj asd90ad ads09f8u'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancel'),
                onPressed: (){},
              ),
              FlatButton(
                child: Text('Accept'),
              )
            ],
          )
        ],
      ),
    );
  }

  //Card Creada por codigo.
  Widget _cardTipo2() {
    final card = Container(
      child: Column(
        children: <Widget>[
          Hero(
            tag: 'testImage1',
            child: FadeInImage(
              image: NetworkImage('https://i.vimeocdn.com/video/703876203_640.jpg'),
              placeholder: AssetImage('assets/jar-loading.gif'),
              fadeInDuration: Duration(milliseconds: 200),
              height: 230,
              fit: BoxFit.cover,
            ),
          ),

          //Image(
          //  image: NetworkImage('https://i.vimeocdn.com/video/703876203_640.jpg'),
          //),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Pruebas'),
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            spreadRadius: 2.0,
            offset: Offset(2.0,10.0)
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: GestureDetector(
          child: card,
        ),
      ),
    );
  }
}