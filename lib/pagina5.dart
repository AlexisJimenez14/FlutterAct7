import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaginaCinco extends StatefulWidget {
  const PaginaCinco({Key? key}) : super(key: key);

  @override
  State<PaginaCinco> createState() => _PaginaCincoState();
}

class _PaginaCincoState extends State<PaginaCinco> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Quinta Pantalla',
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
            // Indicador de actividad estilo iOS
            const CupertinoActivityIndicator(
              radius: 50,
              color: Colors.orangeAccent,
            ),
            const SizedBox(height: 30),
            // Botón para regresar
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
