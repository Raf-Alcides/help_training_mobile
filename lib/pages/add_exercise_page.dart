import 'package:flutter/material.dart';
import 'package:help_training_mobile/models/exercise.dart';

class CreateExercisePage extends StatefulWidget {
  const CreateExercisePage({super.key});
  @override
  State<CreateExercisePage> createState() => _CreateExercisePageState();
}

class _CreateExercisePageState extends State<CreateExercisePage> {
  TextEditingController nameExerciseController = TextEditingController();
  TextEditingController countController = TextEditingController();
  TextEditingController metaCountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height;
    const textStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criar Exercicio'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: size,
          child: Padding(
            padding: const EdgeInsets.only(
                top: 50, left: 20, right: 20, bottom: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Escreva qual o exercicio que tu quer adicinar?',
                  style: textStyle,
                ),
                _input(
                  controller: nameExerciseController,
                  hintText: 'Ex: Pulo de Corda',
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Total de vezes que vs consegue realizar esse exercicio sem parar?',
                  style: textStyle,
                ),
                _input(
                  controller: countController,
                  hintText: 'Ex: 7',
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Seja sincero, Informa a quantidade ideal que tu pretende chegar',
                  style: textStyle,
                ),
                _input(
                  controller: metaCountController,
                  hintText: 'Ex: 30',
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      onPressed: () {
                        String nameExercise = nameExerciseController.text;
                        int? countBefore = int.tryParse(countController.text);
                        int? countAfter =
                            int.tryParse(metaCountController.text);

                        if (countBefore != null && countAfter != null) {
                          if (countAfter > countBefore) {
                            Exercise exercise = Exercise(
                              nameExercise: nameExercise,
                              countBefore: countBefore,
                              countAfter: countAfter,
                            );

                            Navigator.pop<Exercise>(context, exercise);
                          }
                        }
                      },
                      child: const Text('Adicionar Exercicio'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _input extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const _input({
    Key? key,
    required this.controller,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 40,
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            isDense: true,
            hintText: hintText,
            hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey[400]),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
          ),
        ),
      ),
    );
  }
}
