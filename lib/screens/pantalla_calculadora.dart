// ignore_for_file: use_key_in_widget_constructors

import 'package:calculadorita/bloc/calculator/calculadora-controlador.dart';
import 'package:calculadorita/widgets/calc_button.dart';
import 'package:calculadorita/widgets/math_result.dart';
import "package:flutter/material.dart";
import "package:get/get.dart";

class PantallaCalculadora extends StatelessWidget {
  final calculatorCtrl = Get.put(CalculadoraControlador());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: Container(),
              ),
              MathResults(),
              //primera fila de botones
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 3,
                    child: CalculatorButton(
                      text: 'DEL',
                      bgColor: const Color.fromARGB(255, 226, 8, 8),
                      onPressed: () => calculatorCtrl.deleteLastEntry(),
                    ),
                  ),
                ],
              ),

              //primera fila de botones
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CalculatorButton(
                      text: 'AC',
                      bgColor: const Color.fromARGB(255, 128, 121, 121),
                      onPressed: () => calculatorCtrl.resetAll(),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '+/-',
                      bgColor: const Color.fromARGB(255, 128, 121, 121),
                      onPressed: () => calculatorCtrl.cambiarNegativoPositivo(),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '()',
                      bgColor: const Color.fromARGB(255, 128, 121, 121),
                      onPressed: () => calculatorCtrl.selectOperation('/'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '/',
                      bgColor: const Color.fromARGB(255, 128, 121, 121),
                      onPressed: () => calculatorCtrl.selectOperation('/'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '%',
                      bgColor: const Color.fromARGB(255, 128, 121, 121),
                      onPressed: () => calculatorCtrl.selectOperation('%'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '^',
                      bgColor: const Color.fromARGB(255, 128, 121, 121),
                      onPressed: () => calculatorCtrl.selectOperation('^'),
                    ),
                  ),
                ],
              ),

              // Segunda fila de botones
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CalculatorButton(
                      text: '7',
                      onPressed: () => calculatorCtrl.addNumber('7'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '8',
                      onPressed: () => calculatorCtrl.addNumber('8'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '9',
                      onPressed: () => calculatorCtrl.addNumber('9'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: 'X',
                      bgColor: const Color.fromARGB(255, 128, 121, 121),
                      onPressed: () => calculatorCtrl.selectOperation('X'),
                    ),
                  ),
                ],
              ),

              // Tercera fila de botones
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CalculatorButton(
                      text: '4',
                      onPressed: () => calculatorCtrl.addNumber('4'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '5',
                      onPressed: () => calculatorCtrl.addNumber('5'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '6',
                      onPressed: () => calculatorCtrl.addNumber('6'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '-',
                      bgColor: const Color.fromARGB(255, 128, 121, 121),
                      onPressed: () => calculatorCtrl.selectOperation('-'),
                    ),
                  ),
                ],
              ),

              // Cuarta fila de botones
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CalculatorButton(
                      text: '1',
                      onPressed: () => calculatorCtrl.addNumber('1'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '2',
                      onPressed: () => calculatorCtrl.addNumber('2'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '3',
                      onPressed: () => calculatorCtrl.addNumber('3'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '+',
                      bgColor: const Color.fromARGB(255, 128, 121, 121),
                      onPressed: () => calculatorCtrl.selectOperation('+'),
                    ),
                  ),
                ],
              ),

              // Última fila de botones (0, ., =)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2, // Mayor espacio para el botón '0' porque es grande
                    child: CalculatorButton(
                      text: '0',
                      big: true,
                      onPressed: () => calculatorCtrl.addNumber('0'),
                    ),
                  ),
                  Expanded(
                    flex: 1, // Espacio para el botón '.'
                    child: CalculatorButton(
                      text: '.',
                      onPressed: () => calculatorCtrl.addDecimalPoint(),
                    ),
                  ),
                  Expanded(
                    flex: 1, // Espacio para el botón '='
                    child: CalculatorButton(
                      text: '=',
                      bgColor: const Color.fromARGB(255, 194, 128, 6),
                      onPressed: () => calculatorCtrl.calculateResult(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
