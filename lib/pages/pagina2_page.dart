import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:estados_app/models/usuario.dart';
import 'package:estados_app/controllers/usuario_controller.dart';


class Pagina2Page extends StatelessWidget {
  const Pagina2Page({super.key});


  @override
  Widget build(BuildContext context) {

    final usuarioController = Get.find<UsuarioController>();
    final Usuario usuario;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            MaterialButton(
              onPressed: () {
                usuarioController.cargarUsuario( Usuario( nombre: 'Smith', edad: 25 ) );
                Get.snackbar(
                  'Usuario establecido',
                  ' Smith es el nombre del usuario',
                  backgroundColor: Colors.white,
                  boxShadows: [
                    const BoxShadow(
                      color: Colors.black38,
                      blurRadius: 10,

                    )
                  ]
                );
              },
              color: Colors.blue,
              child: const Text('Establecer usuario', style: TextStyle( color: Colors.white ) ),
            ),

            MaterialButton(
              onPressed: () {
                usuarioController.cambiarEdad(20);
              },
              color: Colors.blue,
              child: const Text('Cambiar edad', style: TextStyle( color: Colors.white ) ),
            ),

            MaterialButton(
              onPressed: () {
                // usuarioController.agregarProfesion('profesion #${ usuarioController.usuario.value.profesiones.length +1 }');
                usuarioController.agregarProfesion('profesion #${ usuarioController.profesionesCount +1 }');
              },
              color: Colors.blue,
              child: const Text('Añadir profesion', style: TextStyle( color: Colors.white ) ),
            ),

            MaterialButton(
              onPressed: () => Get.changeTheme( Get.isDarkMode ? ThemeData.light() : ThemeData.dark() ),
                
              color: Colors.blue,
              child: const Text('Cambiar tema', style: TextStyle( color: Colors.white ) ),
            ),
          ],
        ),
     ),
   );
  }
}