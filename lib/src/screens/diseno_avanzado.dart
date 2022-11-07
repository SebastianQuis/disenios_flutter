import 'package:disenios_aplicacion/src/widgets/widgets.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Background(),

          _CuerpoPrincipal(),

        ],
      ),
      bottomNavigationBar: BotonesNavegacion(),
   );
  }
}

class _CuerpoPrincipal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [

          TituloHome(),

          CardTable(),

        ],
      ),
    );
  }
}