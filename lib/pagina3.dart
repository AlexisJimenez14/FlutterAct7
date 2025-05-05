import 'package:flutter/material.dart';

class PaginaTres extends StatelessWidget {
  const PaginaTres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tercera Pantalla',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25.0,
          ),
        ),
        backgroundColor: const Color(0xffed722b), // Mismo estilo naranja
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildTextWithTheme(), // Widget con Builder
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Regresar'),
            ),
          ],
        ),
      ),
    );
  }

  // Método que usa Builder para acceder al Theme correcto
  Widget _buildTextWithTheme() {
    return Builder(
      builder: (BuildContext context) {
        return Text(
          'Texto con Theme',
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                color: Colors.blue, // Personalización adicional
              ),
        );
      },
    );
  }
}
