import 'package:flutter/material.dart';
import 'package:guawpos_app/Widgets/Informacion.dart';
import 'package:guawpos_app/Widgets/OpcionAccion.dart';
import 'package:guawpos_app/Widgets/favoritos.dart';

class Ejercicio_Page extends StatelessWidget {
  final String urlimagen;
  final String nombre;
  final String referencia;
  final int numeroFavoritos;
  final String descripcion;

  const Ejercicio_Page(
      {super.key,
      required this.urlimagen,
      required this.nombre,
      required this.referencia,
      required this.numeroFavoritos,
      required this.descripcion});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //Declaramos un singlechildscrollview para generar un layout con scroll
        body: SingleChildScrollView(
      //Tiene como hijo una columna
      child: Column(children: <Widget>[
        //La columna como hijo tiene un sidebox, una imagen y una row centrada para la rotacion de pagina
        const SizedBox(
          height: 30,
        ),
        Image.network(urlimagen),
        const Informacion(
            nombre: "Max cat", numeroFavoritos: 10, referencia: "10 Kg"),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Accion(icono: Icons.call, texto: "Llamada"),
                Accion(icono: Icons.route, texto: "Ruta"),
                Accion(icono: Icons.share, texto: "Compartir"),
              ]),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(padding: const EdgeInsets.all(20), child: Text(descripcion))
      ]),
    ));
  }
}
