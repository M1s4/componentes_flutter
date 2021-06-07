//importamos solo un objeto de la libreria
import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider{

  List<dynamic> opciones = [];

  _MenuProvider(){
    cargarData();
  }

/*
//metodo de cargarData
  cargarData() {
    //paquete para leer archivo json 
    rootBundle.loadString('data/menu_opts.json')
    //este metodo devuelve un feachure
     .then( (data){
       //en el metodo de la data imprimimos la data
        print(data);
     });
  }*/

  Future<List<dynamic>> cargarData() async {    

    final resp = await rootBundle.loadString('data/menu_opts.json');

     Map dataMap = json.decode(resp);
     print(dataMap['rutas']);
     opciones = dataMap['rutas'];

     return opciones;
  }
}
//instancia de provider para solo exponer la instancia y no todo el json
final menuProvider = new _MenuProvider();