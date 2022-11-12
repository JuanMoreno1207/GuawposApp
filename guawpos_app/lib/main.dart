import 'package:flutter/material.dart';

//Se declara metodo main, por defecto siempre comienza por main
void main(List<String> args) {
  //saludo(); Se pueden llamar metodos directamente
  //Siempre flutter debe inicializar una app mediante runApp
  //Se debe declarar un nuevo objeto de la nueva clase tipo StatelessWidget que retorne MaterialApp
  //o heredar la clase MaterialApp
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  //Por cada widget debemos declarar un key que se guardara en la super clase, en este caso Statelesswidget
  //StatelessWidget es un widget de estado estatico, osea sus valores nunca cambiaran
  const Myapp({super.key});
  //Declaramos el metodo build del widget y sus propiedades
  @override
  Widget build(BuildContext context) {
    //retornamos una constante de tipo MaterialApp con ciertas propiedades
    return MaterialApp(
      title: 'GuawposPet',
      //Se declara la pantilla Scaffold
      home: Scaffold(
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
      ),
      debugShowCheckedModeBanner: true,
    );
  }
}

void saludo() {
  print('Hola mundo!');
}
