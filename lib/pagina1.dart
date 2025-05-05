import 'package:flutter/material.dart';

class PaginaUno extends StatefulWidget {
  const PaginaUno({Key? key}) : super(key: key);

  @override
  State<PaginaUno> createState() => _PaginaUnoState();
}

class _PaginaUnoState extends State<PaginaUno> {
  // Variables para la animación (del Widget010)
  bool _first = true;
  double _fontSize = 60;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Primera Pantalla',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25.0,
          ),
        ),
        backgroundColor: const Color(0xffed722b),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Widget animado (integrado)
            AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 300),
              style: TextStyle(
                fontSize: _fontSize,
                color: _color,
                fontWeight: FontWeight.bold,
              ),
              child: const Text('Flutter'),
            ),
            const SizedBox(height: 30),
            // Botón para trigger de la animación
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _fontSize = _first ? 90 : 60;
                  _color = _first ? Colors.blue : Colors.red;
                  _first = !_first;
                });
              },
              child: const Text('Cambiar Estilo'),
            ),
            const SizedBox(height: 30),
            // Botón "Regresar" original
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Regresar'),
            ),
          ],
        ),
      ),
    );
  }
}
