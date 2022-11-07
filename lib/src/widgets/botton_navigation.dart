import 'package:flutter/material.dart';

class BotonesNavegacion extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar( 
      showUnselectedLabels: false,
      // showSelectedLabels: false,
      selectedItemColor: Colors.white,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      currentIndex: 1,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Calendario'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category_outlined),
          label: 'Categoría'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline_rounded),
          label: 'Perfil'
        ),
      ],
    );
  }
}