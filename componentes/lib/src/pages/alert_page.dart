import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertPage'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Mostrar Alerta'),
          onPressed: () => _mostrarAlert(context),
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            shape: StadiumBorder()
          ),
          ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_location),
        onPressed:(){
          //metodo para devolver hacia la pagina anterior usando el Navigator.pop 
          //dentro le pasamos el build context
          Navigator.pop(context);
        }
      ),
    );
  }

  void _mostrarAlert(BuildContext context){
    showDialog(
      //recibimos el context que enviamos desde donde se declara la funcion
      context: context,
      //en true se puede cerrar el alert desde fuera del div
      barrierDismissible: true,
      //funcion encargada de crear todo el alert
        //esta funcion recibe como argumento un context y retorna un widget 
      builder: (context){

        return AlertDialog(
          shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.0)),
          title:Text('Titulo'),
          content:Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Este es el contenido del alert'),
              FlutterLogo(size: 100.0,)
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: ()=>Navigator.of(context).pop(),
               child: Text('Cancelar'),
               ),
            TextButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
               child: Text('ok'),
               )
          ],
        );
      }
    );
  }
}