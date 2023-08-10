import 'package:flutter/material.dart';

class Treino extends StatelessWidget {
  const Treino({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 24,
        left: 20,
        right: 20,
      ),
      height: 180,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xff7C98FB),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                        ),
                      ),
                      child: Image.asset('assets/images/strength.png'),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Fazer 20 Flexões',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff7C98FB),
                          ),
                        ),
                        const _DifficultyWidget(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: LinearProgressIndicator(
                            color: const Color(0xff7C98FB),
                            backgroundColor:
                                const Color(0xff7C98FB).withAlpha(50),
                            value: 1,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xff7C98FB),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(Colors.white),
                    elevation: const MaterialStatePropertyAll(0),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.keyboard_double_arrow_up,
                        size: 20,
                        color: Colors.green[900],
                      ),
                      const Text('Subir Nivel', style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff7C98FB)
                      ),),
                      Icon(
                        Icons.keyboard_double_arrow_up,
                        size: 20,
                        color: Colors.green[900],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DifficultyWidget extends StatelessWidget {
  const _DifficultyWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star,
          size: 20,
          color: Colors.yellow,
        ),
        const Icon(
          Icons.star,
          size: 20,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star,
          size: 20,
          color: const Color(0xff7C98FB).withAlpha(100),
        ),
        Icon(
          Icons.star,
          size: 20,
          color: const Color(0xff7C98FB).withAlpha(100),
        ),
        Icon(
          Icons.star,
          size: 20,
          color: const Color(0xff7C98FB).withAlpha(100),
        ),
      ],
    );
  }
}
