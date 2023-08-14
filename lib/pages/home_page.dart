import 'package:flutter/material.dart';
import 'package:help_training_mobile/component/card_exercise.dart';
import 'package:help_training_mobile/models/exercise.dart';
import 'package:help_training_mobile/pages/add_exercise_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Exercise> _myExercises = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Treinos'),
      ),
      body: _myExercises.isEmpty
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Sua lista de Exercicios está vazia. \n Adicione seu primeiro Exercicio \n clicando no botao:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[400],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Icon(
                  Icons.add_circle_outlined,
                  size: 60,
                  color: Colors.grey[400],
                )
              ],
            )
          : ListView.separated(
              separatorBuilder: (_, __) => const SizedBox(height: 20),
              itemCount: _myExercises.length,
              itemBuilder: (_, index) {
                return CardExercise(exercise: _myExercises[index]);
              }),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const CreateExercisePage(),
              ),
            ).then(
              (value) {
                Future.delayed(const Duration(seconds: 5),() {
                  if(value != null) {
                    setState(() {
                      _myExercises.add(value);
                    });
                    
                  }
                } );
              },
            );
          },
          child: const Icon(
            Icons.add,
            size: 30,
          )),
    );
  }
}
