import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pruebaslabcode/Utils/Constantes.dart';
import 'package:pruebaslabcode/Utils/routes.dart';
import 'package:pruebaslabcode/splash/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: aAppName,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.ibmPlexSansTextTheme().apply(
          bodyColor: kPrimaryColor,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: Splash.routeName,
      routes: routes,
    );
  }
}
