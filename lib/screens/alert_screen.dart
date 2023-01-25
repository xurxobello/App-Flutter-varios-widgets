import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context){
    showCupertinoDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('Título'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 10),
              FlutterLogo( size: 80,)
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Cerrar', style: TextStyle(color: Colors.red))
            ),
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Ok')
            )
          ],
        );
      }
    );
  }

  void displayDialogAndroid(BuildContext context){
    showDialog(
      // barrierDismissible: true, nos permite cerrar el dialogo que se abre pulsando en la sombra, por defecto es false, por lo que si no ponemos nada tenemos que configurar un botón que nos permita cerrar el diálogo
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: const Text('Título'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 10),
              FlutterLogo( size: 80,)
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Cerrar')
            ),
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Ok')
            )
          ],
        );
      }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Widget'),
      ),
      body: Center(
         child: ElevatedButton(
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text ('Mostrar alerta', style: TextStyle(fontSize: 16)),
          ),
          onPressed: () => displayDialogAndroid(context)
          /* onPressed: () => Platform.isAndroid
          ? displayDialogAndroid(context)
          : displayDialogIOS(context) */
        )
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.close)
      ),
    );
  }
}