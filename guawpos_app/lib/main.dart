// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:guawpos_app/Pages/Pagina1.dart';

import 'Pages/Ejercicio1.dart';

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
    return const MaterialApp(
        title: 'GuawposPet',
        home: Pagina1(),
        // home: Ejercicio_Page(
        //   urlimagen:
        //       "https://kanu.vtexassets.com/arquivos/ids/156130-800-auto?v=636275043635230000&width=800&height=auto&aspect=true",
        //   nombre: "Max cat (Adultos)",
        //   referencia: "10 KG",
        //   numeroFavoritos: 10,
        //   descripcion:
        //       "Max - Cat Gatito Pollo, es rico en taurina, que es buena para el corazón del felino y además es un excelente auxiliar en la salud del tracto urinario y del corazón de tu gato, es una excelente comida para tu mascota, aporta nutrientes que tu felino necesita, mejora su visión.",
        // ),
        debugShowMaterialGrid: false,
        debugShowCheckedModeBanner: true);
  }
}
