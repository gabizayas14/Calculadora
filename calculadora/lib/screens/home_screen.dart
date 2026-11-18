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
      body: Center(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
            return ;
          },
        ),
        ),
    );
  }
}