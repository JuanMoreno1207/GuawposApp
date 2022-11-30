import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Dentro de ella el componente Appbar
      appBar: AppBar(
        title: const Text('Bienvenido a Guawpos'),
      ),
      //Igualmente podemos declarar un cuerpo para el layout Scaffold
      body: Center(
          child: Column(children: const [
        Text('Hola usuario'),
        Text('Hola usuario'),
        Text('Hola usuario'),
      ])),
      //Tambien el boton de accion
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
