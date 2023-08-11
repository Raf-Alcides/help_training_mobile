import 'package:flutter/material.dart';

class CreateExercisePage extends StatefulWidget {
  String _value = '';

  CreateExercisePage({super.key});

  @override
  State<CreateExercisePage> createState() => _CreateExercisePageState();
}

class _CreateExercisePageState extends State<CreateExercisePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criar Exercicio'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Selecione um Exercicio'),
          _DropdownWidget(
              selectedValue: widget._value,
              onChanged: (val) {
                setState(() {
                  widget._value = val as String;
                });
              }),
          const SizedBox(
            height: 50,
          ),
          Text(
              'Qual o numero de Vezes que consegue fazer o Exercicio em Sequencia?'),
          const SizedBox(
            height: 50,
          ),
          Text('Seja Sincero Qual a Quantide ideal de Sequencia e a ideal?'),
          const SizedBox(
            height: 50,
          ),
          Text('Em Quantos meses Quer alcançar esse Objetvo?')
        ],
      ),
    );
  }
}

class _DropdownBottonWidget extends StatefulWidget {
  final void Function() onChanged;
  final int selectedValue;

  const _DropdownBottonWidget({
    Key? key,
    required this.selectedValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<_DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<_DropdownWidget> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
        items: listExercises.map((e) {
          return DropdownMenuItem(
            value: e,
            child: Text(e),
          );
        }).toList(),
        value: widget.selectedValue,
        onChanged: widget.onChanged);
  }
}

class _DropdownWidget extends StatefulWidget {
  final void Function(String?) onChanged;
  final String selectedValue;

  const _DropdownWidget({
    Key? key,
    required this.selectedValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<_DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownBottonWidgetState extends State<_DropdownWidget> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        items: number.map((e) {
          return DropdownMenuItem(
            
            child: Text(e),
          );
        }).toList(),
        value: widget.selectedValue,
        onChanged: widget.onChanged);
  }
}

List number = List.generate(100, (index) => index);

List<String> listExercises = const [
  'Barra Fixa',
  'Agachamento',
  'Elevação Pelvica',
  'Abdominal',
  'Mergulho no banco',
  'Barra parelala',
  'Burpee',
];
