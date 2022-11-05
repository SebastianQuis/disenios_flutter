import 'package:disenios_aplicacion/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DisenoBasicoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const FadeInImage(
            placeholder: AssetImage('assets/no-image.jpg'),
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067__340.png'),
            width: double.infinity,
          ),
          _Titulo(),
          _SeccionBotones(),
          _SeccionDescripcion()
        ],
      ),
    );
  }
}

class _Titulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start, // horizontal
            // mainAxis es vertical
            children: const [
              Text( 'El landscape principal', style: TextStyle(fontWeight: FontWeight.bold)),
              Text( 'Ubicado en el departamento de Junin, Perú.', style: TextStyle(color: Colors.black45))
            ],
          ),
          Expanded(child: Container()),
          // SizedBox(width: 30),
          Icon(Icons.star, color: Colors.red),
          Text('41')
        ],
      ),
    );
  }
}

class _SeccionBotones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          UnicoBoton(icono: Icons.call, texto: 'CALL'),
          UnicoBoton(icono: Icons.send_outlined, texto: 'ROUTE'),
          UnicoBoton(icono: Icons.share, texto: 'SHARE'),
        ],
      ),
    );
  }
}

class _SeccionDescripcion extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        'Exercitation occaecat et ipsum dolore minim sit anim sint ea ut ut incididunt sunt est. Cupidatat voluptate commodo fugiat magna eu aliqua magna aliqua irure culpa exercitation aliqua aute aliqua. Eu quis excepteur deserunt eu irure aliqua labore mollit magna labore est.Commodo nostrud nulla tempor sunt. Qui minim incididunt labore fugiat culpa ipsum labore laborum occaecat laboris occaecat aute ad. Irure aute reprehenderit fugiat irure eu mollit non incididunt aliquip elit esse commodo.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}
