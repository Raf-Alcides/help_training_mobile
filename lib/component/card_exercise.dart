import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardExercise extends StatefulWidget {
  final String title;
  final double value;
  final Icon icon;
  Function()? onPressed;

  CardExercise({
    Key? key,
    required this.title,
    required this.value,
    required this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  State<CardExercise> createState() => _CardExerciseState();
}

class _CardExerciseState extends State<CardExercise> {
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
    );
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
      height: 110,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.title,
            style: textStyle,
          ),
          Row(
            children: [
              Expanded(
                  child: LinearProgressIndicator(
                value: widget.value,
              )),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: widget.icon,
              ),
            ],
          ),
          Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                  onPressed: widget.onPressed, child: const Text('Aumentar Nivel')))
        ],
      ),
    );
  }
}
