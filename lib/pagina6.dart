import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaginaSeis extends StatelessWidget {
  const PaginaSeis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sexta Pantalla',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25.0,
          ),
        ),
        backgroundColor: const Color(0xffed722b), // Mismo estilo naranja
        centerTitle: true,
      ),
      body: CupertinoScrollbar(
        thickness: 6.0,
        thicknessWhileDragging: 10.0,
        radius: const Radius.circular(34.0),
        radiusWhileDragging: Radius.zero,
        child: ListView.builder(
          padding: const EdgeInsets.all(20),
          itemCount: 50,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: Center(
                child: Text(
                  'Ítem ${index + 1}',
                  style: const TextStyle(fontSize: 24),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        backgroundColor: const Color(0xffed722b),
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
