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
  String resultado = '';

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
      resultado = calculadora.calcular(expression);
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

    return Theme(
      data: Theme.of(context).copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 16, 24, 32),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color.fromARGB(255, 42, 157, 143),
          foregroundColor: Colors.white,
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
        ),
      ),
      child: Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculadora',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        backgroundColor: const Color.fromARGB(255, 23, 42, 58),
        elevation: 0,
      ),
      backgroundColor: const Color.fromARGB(255, 16, 24, 32),
      body:Column(
        children: <Widget>[
          Row(
            children: [
              SizedBox(
                height: 45,
                child: Text(
                  expression,
                  style: const TextStyle(fontSize: 22, color: Color(0xFFB0BEC5)),
                ),
              ),
            ],
          ),
          
          Row(
            children: [
              SizedBox(
                height: 65,
                child: Text(
                  resultado,
                  style: tamano40.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
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
                  onPressed: () {},
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
      ),
    );
  }
}