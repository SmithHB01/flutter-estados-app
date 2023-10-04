import 'package:flutter/material.dart';

import 'package:estados_app/models/usuario.dart';
import 'package:estados_app/services/usuario_service.dart';


class Pagina2Page extends StatelessWidget {
  const Pagina2Page({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder(
        stream: usuarioService.usuarioStream,
        builder: (BuildContext context, AsyncSnapshot<Usuario> snapshot) {

          return snapshot.hasData
            ?  Text('Nombre: ${ snapshot.data!.nombre}')
            : const  Text('Pagina 2');
        },
      ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            MaterialButton(
              onPressed: () {

                final nuevoUsuario = Usuario( nombre: 'Smith', edad: 25 );
                usuarioService.cargarUsuario(nuevoUsuario);
              },
              color: Colors.blue,
              child: const Text('Establecer usuario', style: TextStyle( color: Colors.white ) ),
            ),

            MaterialButton(
              onPressed: () {

                usuarioService.cambiarEdad(30);
              
              },
              color: Colors.blue,
              child: const Text('Cambiar edad', style: TextStyle( color: Colors.white ) ),
            ),

            MaterialButton(
              onPressed: () {
              
              },
              color: Colors.blue,
              child: const Text('Añadir profesion', style: TextStyle( color: Colors.white ) ),
            ),
          ],
        ),
     ),
   );
  }
}