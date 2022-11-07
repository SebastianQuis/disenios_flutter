import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _UnCard(
              color: Colors.blue, icon: Icons.coffee_outlined, text: 'Café'),
          _UnCard(
              color: Colors.purpleAccent,
              icon: Icons.breakfast_dining_outlined,
              text: 'Chicharrón'),
        ]),
        TableRow(children: [
          _UnCard(color: Colors.indigo, icon: Icons.shop, text: 'Shop'),
          _UnCard(color: Colors.indigoAccent, icon: Icons.cloud, text: 'Bill'),
        ]),
        TableRow(children: [
          _UnCard(
              color: Colors.blueGrey,
              icon: Icons.movie,
              text: 'Entretenimiento'),
          _UnCard(
              color: Colors.redAccent,
              icon: Icons.food_bank_rounded,
              text: 'Golosinas'),
        ]),
        TableRow(children: [
          _UnCard(
              color: Colors.lightBlue,
              icon: Icons.maps_home_work,
              text: 'General'),
          _UnCard(
              color: Colors.pinkAccent,
              icon: Icons.car_rental_sharp,
              text: 'Transporte'),
        ]),
      ],
    );
  }
}

class _UnCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  _UnCard({required this.icon, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return _BackgroundCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 35,
            child: Icon(
              icon,
              size: 40,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            text,
            style: TextStyle(fontSize: 18, color: color),
          )
        ],
      )
    );
  }
}

class _BackgroundCard extends StatelessWidget {

  final Widget child;
  const _BackgroundCard({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: child,
          ),
        ),
      ),
    );
  }
}
