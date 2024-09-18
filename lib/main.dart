import 'package:flutter/material.dart';
import 'package:wether_final_app/ui/get_started.dart';

void main() {
  runApp(MayApp());

  /// lance l'application en créant un widget racine
  /// (ici, MayApp) qui sera affiché sur l'écran. runApp
  /// prend un widget et le rend sur l'écran.
}

class MayApp extends StatelessWidget {
  ///widget immuable
  const MayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      ///MaterialApp est un widget qui enveloppe l'application entière et fournit le style et les fonctionnalités Material Design.
      title: 'Weather App',
      home: GetStarted(),
      debugShowCheckedModeBanner: false,
    );
  }
}
