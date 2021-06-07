import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(

        //padding a todos los lados de 10px
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 20.0,),
          _cardTipo2(),
          SizedBox(height: 20.0,),
          _cardTipo1(),
          SizedBox(height: 20.0,),
          _cardTipo2(),
          SizedBox(height: 20.0,),
          _cardTipo1(),
          SizedBox(height: 20.0,),
          _cardTipo2(),
          SizedBox(height: 20.0,),
          _cardTipo1(),
          SizedBox(height: 20.0,),
          _cardTipo2(),
          SizedBox(height: 20.0,),          
        ],
        ),
    );
  }
  Widget _cardTipo1(){       
    //retornamos un card
    return  Card(
      //profundidad de la sombra
      elevation: 10.0,
      //borde circular de 20px
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      //creamos columna para listar las cards
      child:Column(

        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color:Colors.blue),
            title  : Text('Titulo de la tarjeta'),
            subtitle: Text('Aqui puede ir una descripcion pequeña del contenido'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children:<Widget>[
              TextButton(
                onPressed: (){},
                child: Text('Cancelar'),
                ),
                TextButton(
                onPressed: (){},
                child: Text('Cancelar'),
                ),

            ],
          )
        ],
      )
    );

  }
  
  Widget _cardTipo2(){
     
     final card = Card(
       child: Column(
         children: <Widget>[              
              FadeInImage(
                 placeholder: AssetImage('assets/jar-loading.gif'),
                 image: NetworkImage('https://images.unsplash.com/photo-1444703686981-a3abbc4d4fe3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'),
                 fadeInDuration: Duration(milliseconds: 200),
                 height: 300.0,
                 fit:BoxFit.cover,
                 ),
                 Container(
                   padding: EdgeInsets.all(10.0),
                   child  : Text('Texto del card'),
                 ),

              
              //Image(
                //image: NetworkImage('https://images.unsplash.com/photo-1444703686981-a3abbc4d4fe3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'),
              //)
         ],
       ),
     );

     return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: <BoxShadow>[
            BoxShadow(
              color:Colors.black26,
              blurRadius:10.0,
              spreadRadius:2.0,
              offset: Offset(2.0, 10.0)
            )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),

     );
  }
}