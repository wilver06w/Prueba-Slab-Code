import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pruebaslabcode/Inicio/Inicio.dart';

/// Donde se inicia la vista splash.
class Splash extends StatelessWidget {
  static String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return SplashHome();
  }
}

/// Donde se crea stateful
class SplashHome extends StatefulWidget {
  @override
  SplasState createState() => SplasState();
}

/// Donde se crea una vista y se manejan estados
class SplasState extends State<SplashHome> with SingleTickerProviderStateMixin {
  ///Animation controler
  late AnimationController _controller;
  @override
// ignore: must_call_super
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 1,
      ),
    )..repeat();

    Timer(
      const Duration(seconds: 10),
      () => {
        Navigator.of(context).pushNamedAndRemoveUntil(
            InicioHomePage.routeName, ModalRoute.withName('/')),
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          SvgPicture.asset(
            'assets/icons/icon_slabcode.svg',
            color: Colors.red,
            fit: BoxFit.fitWidth,
            height: 200,
            width: 250,
          ),
        ],
      ),
    );
  }
}
