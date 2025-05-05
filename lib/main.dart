import 'package:JimenezMap/menu.dart';
import 'package:JimenezMap/pagina1.dart';
import 'package:JimenezMap/pagina2.dart';
import 'package:JimenezMap/pagina3.dart';
import 'package:JimenezMap/pagina4.dart';
import 'package:JimenezMap/pagina5.dart';
import 'package:JimenezMap/pagina6.dart';
import 'package:flutter/material.dart';

void main() => runApp(Widgets());

class Widgets extends StatelessWidget {
  const Widgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Entre Paginas Routes",
      initialRoute: '/',
      routes: {
// When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const Menu(),
// When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla1': (context) => const PaginaUno(),
        '/pantalla2': (context) => const PaginaDos(),
        '/pantalla3': (context) => const PaginaTres(),
        '/pantalla4': (context) => const PaginaCuatro(),
        '/pantalla5': (context) => const PaginaCinco(),
        '/pantalla6': (context) => const PaginaSeis(),
      },
    );
  }
}
