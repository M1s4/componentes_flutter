
import 'package:flutter/material.dart';

import 'package:componentes/src/routes/routes.dart';

import 'package:componentes/src/pages/alert_page.dart';
//import 'package:componentes/src/pages/home_temp.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      //definimos que la ruta inicial es un "/" en este argumento
      initialRoute: '/',
      //
      routes: getApplicationRoutes(),
      //funcion que regresa una ruta dinamica 
        //nos pide los settings 
      onGenerateRoute: (RouteSettings settings){
         print('Ruta llamada : ${settings.name}');
         
         //retornamos una ruta 
         return MaterialPageRoute(
           //en el builder ponemos el buildcontext y lo mandamos al alertPage
           builder: (BuildContext context) => AlertPage()
           );
      },
      //home:HomePage(),
      //home: HomePageTemp(),
    );
  }
} 