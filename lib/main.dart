import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:disenios_aplicacion/src/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      theme: ThemeData.dark(),
      initialRoute: 'home_screen',
      routes: {
        'diseno_basico': (_) => DisenoBasicoScreen(),
        'diseno_scroll': (_) => ScrollScreen(),
        'home_screen': (_) => HomeScreen(),
      },
    );
  }
}
