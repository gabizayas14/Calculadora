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
    setState(() {
      expression = calculadora.agregarNumero(expression, numero);
    });
  }

  void agregarOperador(String operador) {
    setState(() {
      expression = calculadora.agregarOperador(expression, operador);
    });
  }

  void porcentaje() {
    setState(() {
      expression = calculadora.porcentaje(expression);
    });
  }

  void calcular() {
    setState(() {
      resultado = calculadora.calcular(expression);
    });
  }

  void limpiar() {
    setState(() {
      expression = calculadora.limpiar();
      resultado = '';
    });
  }

  void borrar() {
    setState(() {
        expression = calculadora.borrar(expression);
    });
  }

  @override
  Widget build(BuildContext context) {

    const tamano40 = TextStyle(fontSize: 40);

    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora', style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),

        elevation: 20,
      ),
      backgroundColor: const Color.fromARGB(255, 16, 24, 32),
      body:Column(
        children: <Widget>[
          Row(
            children: [
              SizedBox(
                height: 45,
                child: Text(expression, style: TextStyle(fontSize: 22, color: Colors.white)),
              ),
            ],
          ),
          
          Row(
            children: [
              SizedBox(
                height: 65,
                child: Text(resultado, style: TextStyle(fontSize: 40, color: Colors.white)),
              ),
            ],
          ),
          
          
          Row(
            children: <Widget>[
              Expanded(
                child: 
                FloatingActionButton(
                  backgroundColor: Color.fromARGB(255, 42, 157, 143),
                  foregroundColor: Colors.white,
                  onPressed: porcentaje,
                  child: Text("%")
                )
              ),

              Expanded(
                child: 
                FloatingActionButton(
                  backgroundColor: Color.fromARGB(255, 42, 157, 143),
                  foregroundColor: Colors.white,
                  onPressed: () => limpiar(),
                  child: Text("C")
                )
              ),

              Expanded(
                child: 
                FloatingActionButton(
                  backgroundColor: Color.fromARGB(255, 42, 157, 143),
                  foregroundColor: Colors.white,
                  onPressed: borrar,
                  child: Text("⌫")
                )
              ),

              Expanded(
                child: 
                FloatingActionButton(
                  backgroundColor: Color.fromARGB(255, 42, 157, 143),
                  foregroundColor: Colors.white,
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
                  foregroundColor: Colors.white,
                  backgroundColor: Color.fromARGB(255, 42, 157, 143),
                  onPressed: () => agregarNumero('7'),
                  child: Text("7")
                )
              ),

              Expanded(
                child: 
                FloatingActionButton(
                  foregroundColor: Colors.white,
                  backgroundColor: Color.fromARGB(255, 42, 157, 143),
                  onPressed: () => agregarNumero('8'),
                  child: Text("8")
                )
              ),

              Expanded(
                child: 
                FloatingActionButton(
                  foregroundColor: Colors.white,
                  backgroundColor: Color.fromARGB(255, 42, 157, 143),
                  onPressed:() =>  agregarNumero('9'),
                  child: Text("9")
                )
              ),

              Expanded(
                child: 
                FloatingActionButton(
                  foregroundColor: Colors.white,
                  backgroundColor: Color.fromARGB(255, 42, 157, 143),
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
                  foregroundColor: Colors.white,
                  backgroundColor: Color.fromARGB(255, 42, 157, 143),
                  onPressed: () => agregarNumero('4'),
                  child: Text("4")
                )
              ),

              Expanded(
                child: 
                FloatingActionButton(
                  foregroundColor: Colors.white,
                  backgroundColor: Color.fromARGB(255, 42, 157, 143),
                  onPressed: () => agregarNumero('5'),
                  child: Text("5")
                )
              ),

              Expanded(
                child: 
                FloatingActionButton(
                  foregroundColor: Colors.white,
                  backgroundColor: Color.fromARGB(255, 42, 157, 143),
                  onPressed: () => agregarNumero('6'),
                  child: Text("6")
                )
              ),

              Expanded(
                child: 
                FloatingActionButton(
                  foregroundColor: Colors.white,
                  backgroundColor: Color.fromARGB(255, 42, 157, 143),
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
                  foregroundColor: Colors.white,
                  backgroundColor: Color.fromARGB(255, 42, 157, 143),
                  onPressed: () => agregarNumero('1'),
                  child: Text("1")
                )
              ),

              Expanded(
                child: 
                FloatingActionButton(
                  foregroundColor: Colors.white,
                  backgroundColor: Color.fromARGB(255, 42, 157, 143),
                  onPressed: () => agregarNumero('2'),
                  child: Text("2")
                )
              ),

              Expanded(
                child: 
                FloatingActionButton(
                  foregroundColor: Colors.white,
                  backgroundColor: Color.fromARGB(255, 42, 157, 143),
                  onPressed: () => agregarNumero('3'),
                  child: Text("3")
                )
              ),

              Expanded(
                child: 
                FloatingActionButton(
                  foregroundColor: Colors.white,
                  backgroundColor: Color.fromARGB(255, 42, 157, 143),
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
                  foregroundColor: Colors.white,
                  backgroundColor: Color.fromARGB(255, 42, 157, 143),
                  onPressed: () {},
                  child: Text("+/-")
                )
              ),
              
              Expanded(
                child: 
                FloatingActionButton(
                  foregroundColor: Colors.white,
                  backgroundColor: Color.fromARGB(255, 42, 157, 143),
                  onPressed: () => agregarNumero('0'),
                  child: Text("0")
                )
              ),
              Expanded(
                child: 
                FloatingActionButton(
                  foregroundColor: Colors.white,
                  backgroundColor: Color.fromARGB(255, 42, 157, 143),
                  onPressed: () => agregarOperador(','),
                  child: Text(",")
                )
              ),
              Expanded(
                child: 
                FloatingActionButton(
                  foregroundColor: Colors.white,
                  backgroundColor: Color.fromARGB(255, 42, 157, 143),
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