import 'package:flutter/material.dart';
import 'package:disenios_aplicacion/src/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'diseno_scroll',
      routes: {
        'diseno_basico': ( _ ) => DisenoBasicoScreen(),
        'diseno_scroll': ( _ ) => ScrollScreen(),
      },
    );
  }
}