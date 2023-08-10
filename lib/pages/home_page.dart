import 'package:flutter/material.dart';

import '../treino.dart';

class HomePage extends StatelessWidget {

  const HomePage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Treinos'),),
           
           body: const Treino(),
       );
  }
}