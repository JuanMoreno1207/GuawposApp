import 'package:flutter/material.dart';
import 'package:guawpos_app/Widgets/favoritos.dart';

class Informacion extends StatelessWidget {
  final String nombre;
  final String referencia;
  final int numeroFavoritos;
  const Informacion(
      {super.key,
      required this.nombre,
      required this.referencia,
      required this.numeroFavoritos});

  @override
  Widget build(BuildContext context) {
    return Row(
      //Que el tamaño de la fila sea lo minimo segun sus componentes, de esta forma podemos centrarla
      children: [
        SizedBox(
          width: 350,
          child: Column(
            children: <Widget>[
              Text(
                nombre,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(referencia),
            ],
          ),
        ),
        Favoritos(numeroFavoritos: numeroFavoritos)
      ],
    );
  }
}
