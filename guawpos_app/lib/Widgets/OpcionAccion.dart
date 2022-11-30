import 'package:flutter/material.dart';

class Accion extends StatelessWidget {
  final IconData icono;
  final String texto;
  const Accion({super.key, required this.icono, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Icon(icono),
      Text(texto),
    ]);
  }
}
