import 'package:flutter/material.dart';
import 'package:help_training_mobile/models/exercise.dart';

class CardExercise extends StatefulWidget {
  final Exercise exercise;

  CardExercise({
    Key? key,
    required this.exercise,
  }) : super(key: key);

  @override
  State<CardExercise> createState() => _CardExerciseState();
}

class _CardExerciseState extends State<CardExercise> {
  Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
    );
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          height: 125,
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black54,
                blurRadius: 5.0,
                offset: Offset(0.0, 0.75),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: widget.exercise.countBefore < widget.exercise.countAfter ? CrossAxisAlignment.stretch : CrossAxisAlignment.center,
            mainAxisAlignment: widget.exercise.countBefore < widget.exercise.countAfter ? MainAxisAlignment.start : MainAxisAlignment.center,
            children: [
              Text(
                '${widget.exercise.nameExercise} ${widget.exercise.countBefore} vezes',
                style: textStyle,
              ),
              Row(
                children: [
                  Expanded(
                      child: LinearProgressIndicator(
                    value: widget.exercise.countBefore /
                        widget.exercise.countAfter,
                  )),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(
                      Icons.check,
                      size: 40,
                      color: widget.exercise.countBefore < widget.exercise.countAfter
                          ? Colors.grey[400]
                          : Colors.green[600],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: widget.exercise.countBefore < widget.exercise.countAfter ? ElevatedButton(
                  onPressed: () {
                    if(widget.exercise.countBefore < widget.exercise.countAfter) {
                      setState(() {
                      widget.exercise.countBefore++;
                    });
                    }
                  },
                  child: const Text('Aumentar Nivel'),
                ) : null
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            height: 40,
            width: 40,
            color: Colors.black,
            child: Image.asset('assets/images/strength.png', ),
          ),
        )
      ],
    );
  }
}
