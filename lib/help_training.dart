import 'package:flutter/material.dart';
import 'package:help_training_mobile/pages/home_page.dart';

class HelpTraining extends StatelessWidget {
  const HelpTraining({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Help Training',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:  const HomePage(),
    );
  }
}