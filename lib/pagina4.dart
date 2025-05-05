import 'package:flutter/material.dart';

class PaginaCuatro extends StatelessWidget {
  const PaginaCuatro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cuarta Pantalla',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25.0,
          ),
        ),
        backgroundColor: const Color(0xffed722b), // Mismo estilo naranja
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Widget ClipPath con efecto personalizado
          ClipPath(
            clipper: _MiRecorte(), // Clipper personalizado
            child: Container(
              width: double.infinity,
              height: 200,
              color: const Color(0xFF142B46), // Color azul oscuro original
              child: const Center(
                child: Text(
                  'Diseño Recortado',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          // Botón para regresar
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Regresar'),
          ),
        ],
      ),
    );
  }
}

// Clipper personalizado (igual al original)
class _MiRecorte extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..lineTo(0, size.height)
      ..quadraticBezierTo(
        size.width / 4,
        size.height - 40,
        size.width / 2,
        size.height - 20,
      )
      ..quadraticBezierTo(
        3 / 4 * size.width,
        size.height,
        size.width,
        size.height - 30,
      )
      ..lineTo(size.width, 0);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
