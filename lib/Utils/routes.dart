import 'package:flutter/material.dart';
import 'package:pruebaslabcode/Inicio/Inicio.dart';
import 'package:pruebaslabcode/splash/splash.dart';

/// We use name route
/// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  Splash.routeName: (context) => Splash(),
  Inicio.routeName: (context) => Inicio(),
};









