import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  //creamos una lista con el titulo de cada item del AppBar

  final opciones = ['uno','dos','tres','cuatro','cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('ComponentesTemp'),
      ),
      //usamos el listView que me permite hacer scroll en una lista
      body: ListView(
        //recibimos un metodo en el children 
        children: _crearItemsCorta()
      )
      );    
  }

//metodo que devuelve la lista de titulos para la listView
  List<Widget> _crearItems(){

      List<Widget> lista = new List<Widget>();
     //recorremos el array
      for (String opt in opciones) {
        //en una variable de tipo final ponemosu un listTile para recibir los titulos
        final tempWidget = ListTile(
          //el titulo es un widget que recibe una lista de los elementos en "opciones"
          title: Text(opt),
        );
        //agregamos la lista a la variable temporal
        lista..add(tempWidget)
        //tambien agregamos un divider para crear una separacion del titulo
             ..add(Divider());
      }
    
    return lista;
  } 

  List<Widget> _crearItemsCorta(){
    return opciones.map((item) {

      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Cualquier cosa'),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap:(){},
          ),
          Divider()
        ],
      );

    }).toList();
  }



}