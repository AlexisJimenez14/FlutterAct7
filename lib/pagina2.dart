import 'package:flutter/material.dart';

class PaginaDos extends StatefulWidget {
  const PaginaDos({Key? key}) : super(key: key);

  @override
  State<PaginaDos> createState() => _PaginaDosState();
}

class _PaginaDosState extends State<PaginaDos> {
  int _count = 0; // Mantenemos la variable original para el contador

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Segunda Pantalla',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25.0,
          ),
        ),
        backgroundColor:
            const Color(0xffed722b), // Mismo color naranja que PaginaUno
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // AnimatedSwitcher con el contador
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: Text(
                '$_count',
                style: const TextStyle(fontSize: 40),
                key: ValueKey(_count), // Importante para la animación
              ),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(
                    scale: animation, child: child); // Efecto de escala
              },
            ),
            const SizedBox(height: 30),
            // Botón para incrementar
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _count += 1; // Incrementa el contador
                });
              },
              child: const Text('Incrementar'),
            ),
            const SizedBox(height: 30),
            // Botón para regresar (opcional)
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
