import 'package:flutter/material.dart';

class TituloHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Clasificar transacción', style: textStyle),
            SizedBox(height: 10),
            Text('Clasifica la transacción dentro de una categoría particular', style: TextStyle(fontSize: 18, color: Colors.white) ,),
          ],
        ),
      ),
    );
  }
}
