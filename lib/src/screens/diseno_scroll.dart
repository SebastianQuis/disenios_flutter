import 'package:flutter/material.dart';


class ScrollScreen extends StatelessWidget {
  final boxDecoration = const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.5,0.5],
      colors: [
        Color(0xff5EE8C5),
        Color(0xff30BAD6)])
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          physics: const BouncingScrollPhysics(), // efecto iOs.
          scrollDirection: Axis.vertical,
          children: [
            _Scroll1(),
            _Scroll2(),
          ],
        ),  
        
      ),
   );
  }
}


class _Scroll2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final style = TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30);
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: (){},
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xff0098FA),
            shape: const StadiumBorder()
          ), 
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
            child: Text('Bienvenido', style: style),
          ),
        ),
      ),      
    );
  }
}

class _Scroll1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundPrincipal(),
        ContenidoPrincipal(),
      ],
    );
  }
}

class ContenidoPrincipal extends StatelessWidget {
  final textStyle = TextStyle(fontSize: 50, color: Colors.white, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 25),
          Text('11°', style: textStyle ),
          Text('Miércoles', style: textStyle ),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white,)
        ],
      ),
    );
  }
}

class BackgroundPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      // height: double.infinity,
      alignment: Alignment.topCenter,
      child: Image(image: AssetImage('assets/scroll-1.png'))
    );
  }
}

