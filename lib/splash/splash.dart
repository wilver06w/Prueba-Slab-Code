import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pruebaslabcode/Inicio/Inicio.dart';
import 'package:pruebaslabcode/Utils/Constantes.dart';

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

/// Donde se crea la vista y se manejan estados
class SplasState extends State<SplashHome> with SingleTickerProviderStateMixin {
  ///Animation controler
  late AnimationController _controller;
  @override
// ignore: must_call_super
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 20,
      ),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kColorFondoSplash,
      body: Stack(
        children: [
          Center(
            child: TweenAnimationBuilder<double>(
              onEnd: () {
                Timer(
                  const Duration(seconds: 3),
                  () {
                    // Creando tu ruta
                    // MaterialPageRoute routae = MaterialPageRoute(
                    //   builder: (context) => Inicio(),
                    // );
                    // Navigator.pushAndRemoveUntil(context, routae, (r) => false);
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        Inicio.routeName, ModalRoute.withName('/'));
                  },
                );
              },
              curve: Curves.bounceInOut,
              duration: Duration(seconds: 2),
              tween: Tween<double>(begin: 30, end: 100),
              builder: (BuildContext context, double sizes, Widget? child) {
                return SvgPicture.asset(
                  'assets/icons/icon_slabcodedos.svg',
                  color: kColorLogo,
                  fit: BoxFit.fitWidth,
                  height: 120,
                  width: 120,
                );
              },
            ),
          ),
          Positioned(
            bottom: 15,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: dDefaultSpacing),
              child: Column(
                children: [
                  Text(
                    sSomosUnEquipoExperto,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: _size.width / 2),
                    child: Divider(
                      color: Colors.white,
                      // endIndent: 5,
                      indent: 5,
                      thickness: 1,
                    ),
                  ),
                  Text(
                    lLoHacemosConCorazon,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
