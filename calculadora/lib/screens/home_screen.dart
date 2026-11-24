import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  
  @override
  State<HomeScreen> createState() => _HomeScreenState(); 
}

class _HomeScreenState extends State<HomeScreen> {
  int total = 0;
  int primernumero = 0;
  int segundonumero = 0;

  void boton7(){
    total = 7;
    setState(() {});
  }

  void boton8(){
    total = 8;
    setState(() {});
  }

  void boton9(){
    total = 9;
    setState(() {});
  }

  void boton4(){
    total = 4;
    setState(() {});
  }

  void boton5(){
    total = 5;
    setState(() {});
  }

  void boton6(){
    total = 6;
    setState(() {});
  }

  void boton1(){
    primernumero = 1;
    setState(() {});
  }

  void boton2(){
    segundonumero = 2;
    setState(() {});
  }

  void boton3(){
    total = 3;
    setState(() {});
  }

  void boton0(){
    total = 0;
    setState(() {});
  }

  void sumar(){
    total = primernumero + segundonumero;
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
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: Text('$total', style: tamano40,))
            ],
          ),

          Row(
            children: <Widget>[
              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: boton7,
                  child: Text("7")
                )
              ),
              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: boton8,
                  child: Text("8")
                )
              ),
              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: boton9,
                  child: Text("9")
                )
              ),
              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: null,
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
                  onPressed: boton4,
                  child: Text("4")
                )
              ),
              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: boton5,
                  child: Text("5")
                )
              ),
              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: boton6,
                  child: Text("6")
                )
              ),
              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: null,
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
                  onPressed: boton1,
                  child: Text("1")
                )
              ),
              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: boton2,
                  child: Text("2")
                )
              ),
              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: boton3,
                  child: Text("3")
                )
              ),
              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: sumar,
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
                  onPressed: null,
                  child: Text("+-")
                )
              ),
              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: boton0,
                  child: Text("0")
                )
              ),
              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: null,
                  child: Text(",")
                )
              ),
              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: null,
                  child: Text("=")
                )
              ),
            ],
          ),
        ]  
      ),
    );
  }
}