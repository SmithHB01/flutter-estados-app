import 'package:estados_app/models/usuario.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:estados_app/services/usuario_service.dart';


class Pagina2Page extends StatelessWidget {
  const Pagina2Page({super.key});


  @override
  Widget build(BuildContext context) {

    final usuarioService = Provider.of<UsuarioService>(context);

    return Scaffold(
      appBar: AppBar(
        title: usuarioService.existeUsuario
          ? Text('Nombre: ${ usuarioService.usuario.nombre}')
          : const Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            MaterialButton(
              onPressed: () {
                final newUser = Usuario(
                  nombre: 'Smith',
                  edad: 25,
                  profesiones: ['Fullstack Developer', 'Jugador Experto'],
                );
                usuarioService.usuario = newUser;
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
                usuarioService.agregarProfesion();
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