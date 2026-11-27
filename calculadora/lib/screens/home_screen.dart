import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:calculadora/logica/logica_calculadora.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  
  @override
  State<HomeScreen> createState() => _HomeScreenState(); 
}

class _HomeScreenState extends State<HomeScreen> {
  final calculadora = LogicaCalculadora();

  String expression = '';

  void agregarNumero(String numero) {
    expression = expression + numero;
    setState(() {});
  }

  void agregarOperador(String operador) {
    expression = expression + operador;
    setState(() {});
  }

  void porcentaje() {
    try {
      final numero = double.parse(expression);

      setState((){
        expression = (numero / 100).toString();
      });
    } catch (_) {
      setState(() {
        expression = 'Error';
      });
    }
  }

  void calcular() {
    setState(() {
      expression = calculadora.calcular(expression);
    });
  }

  void limpiar() {
    setState(() {
      expression = '';
    });
  }

  void borrar() {
    if (expression.isNotEmpty) {
      setState(() {
        expression = expression.substring(0, expression.length -1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    const tamano40 = TextStyle(fontSize: 40);

    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora', style: TextStyle(color: Colors.black),),
        backgroundColor: const Color.fromARGB(255, 47, 211, 240),

        elevation: 20,
      ),
      backgroundColor: const Color.fromARGB(255, 105, 206, 110),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: Text(expression, style: tamano40),
                  ),
                ],
              ),
            ),
          ),

          Expanded(
            flex: 2,
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: Text(expression, style: tamano40),
                  )
                ],
              )
            )
          ),
          
          Row(
            children: <Widget>[
              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: porcentaje,
                  child: Text("%")
                )
              ),

              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: () => limpiar(),
                  child: Text("C")
                )
              ),

              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: borrar,
                  child: Text("⌫")
                )
              ),

              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: () => agregarOperador('/'),
                  child: Text("÷")
                )
              )
            ],
          ),

          Row(
            children: <Widget>[
              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: () => agregarNumero('7'),
                  child: Text("7")
                )
              ),

              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: () => agregarNumero('8'),
                  child: Text("8")
                )
              ),

              Expanded(
                child: 
                FloatingActionButton(
                  onPressed:() =>  agregarNumero('9'),
                  child: Text("9")
                )
              ),

              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: () => agregarOperador('*'),
                 child: Text("*")
                )
              ),
            ],
          ),

          Row(
            children: <Widget>[
              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: () => agregarNumero('4'),
                  child: Text("4")
                )
              ),

              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: () => agregarNumero('5'),
                  child: Text("5")
                )
              ),

              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: () => agregarNumero('6'),
                  child: Text("6")
                )
              ),

              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: () => agregarOperador('-'),
                  child: Text("-")
                )
              ),
            ],
          ),

          Row(
            children: <Widget>[
              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: () => agregarNumero('1'),
                  child: Text("1")
                )
              ),

              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: () => agregarNumero('2'),
                  child: Text("2")
                )
              ),

              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: () => agregarNumero('3'),
                  child: Text("3")
                )
              ),

              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: () => agregarOperador('+'),
                  child: Text("+")
                )
              ),
            ],
          ),

          Row(
            children: <Widget>[
              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: () => null,
                  child: Text("+/-")
                )
              ),

              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: () => agregarNumero('0'),
                  child: Text("0")
                )
              ),

              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: () => agregarOperador(','),
                  child: Text(",")
                )
              ),
              
              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: calcular,
                  child: Text("=")
                )
              ),
            ],
          ),
        ],
      ),
    );
  }
}
      