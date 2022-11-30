import 'package:flutter/material.dart';
import 'package:guawpos_app/Pages/Pagina2.dart';

class Pagina1 extends StatelessWidget {
  const Pagina1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pagina 1"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Pagina2(),
                ));
          },
          child: const Text("Ir a pagina 2"),
        ),
      ),
    );
  }
}
