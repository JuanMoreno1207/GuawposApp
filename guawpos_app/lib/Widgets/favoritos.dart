import 'package:flutter/material.dart';

class Favoritos extends StatefulWidget {
  int numeroFavoritos;
  Favoritos({super.key, required this.numeroFavoritos});

  @override
  State<Favoritos> createState() => _FavoritosState();
}

class _FavoritosState extends State<Favoritos> {
  bool _marcado = false;

  _ValidaFavorite() {
    setState(() {
      widget.numeroFavoritos += _marcado ? -1 : 1;
      _marcado = !_marcado;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: _ValidaFavorite,
          icon: Icon(_marcado ? Icons.star : Icons.star_outline),
          color: const Color(0xFFFF0000),
        ),
        Text("${widget.numeroFavoritos}"),
      ],
    );
  }
}
