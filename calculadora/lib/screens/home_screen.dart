import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  
  @override
  State<HomeScreen> createState() => _HomeScreenState(); 
}

class _HomeScreenState extends State<HomeScreen> {
  int total = 0;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.red,

        elevation: 20,
      ),
      backgroundColor: Colors.amber,
      body: Column(
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: null,
                  child: Text("7")
                )
              ),
              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: null,
                  child: Text("8")
                )
              ),
              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: null,
                  child: Text("9")
                )
              ),
              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: null,
                 child: Text("X")
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
                  child: Text("4")
                )
              ),
              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: null,
                  child: Text("5")
                )
              ),
              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: null,
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
                  onPressed: null,
                  child: Text("1")
                )
              ),
              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: null,
                  child: Text("2")
                )
              ),
              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: null,
                  child: Text("3")
                )
              ),
              Expanded(
                child: 
                FloatingActionButton(
                  onPressed: null,
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
                  onPressed: null,
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