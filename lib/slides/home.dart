import 'package:flutter/material.dart';
import 'package:todo/slides/input.dart';
import 'package:todo/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  //BuildContext get context => context;


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('T0d0!'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed:navigateToInputPage,
          label: const Text('+')
      ),
    );
  }
  void navigateToInputPage(){
    /*final route = MaterialPageRoute(
      builder: (context)=> InputPage(),
    );
    Navigator.push(context, route);*/
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => InputPage()),
    );
  }
}