import 'package:flutter/material.dart';
import 'package:healthy_life/first_screen.dart';
import 'package:healthy_life/home_screen.dart';

void main(){
  runApp(HealthyLifeStyle());
}

class HealthyLifeStyle extends StatelessWidget {
  const HealthyLifeStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/first',

      routes: {
        '/first': (context) => FirstScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}
