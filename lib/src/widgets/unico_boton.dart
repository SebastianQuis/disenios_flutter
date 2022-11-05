import 'package:flutter/material.dart';

class UnicoBoton extends StatelessWidget {
  final IconData icono;
  final String texto;

  UnicoBoton({required this.icono, required this.texto});

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = TextStyle(fontSize: 12, color: Colors.blue[600]);

    return Column(
      children: [
        Icon( icono, size: 35, color: Colors.blue[600]),
        const SizedBox(height: 10),
        Text(texto, style: textStyle)
      ],
    );
  }
}