
/*
import 'package:flutter/material.dart';

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
    */
/*final route = MaterialPageRoute(
      builder: (context)=> InputPage(),
    );
    Navigator.push(context, route);*//*

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => InputPage()),
    );
  }
}*/

/*
import 'package:flutter/material.dart';

import 'input.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  List<Todo> todos = [];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('T0d0!'),
        centerTitle: true,
        // backgroundColor: Colors.black54,
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            //color: Colors.blueGrey,
            child: ListTile(
              title: Text(todos[index].title),
              subtitle: Text(todos[index].description),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed:navigateToInputPage,
          label: const Text('+')
      ),
    );
  }
//For navigation to input page
  void navigateToInputPage() async {
    final newTodo = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => InputPage()),
    );

    if (newTodo != null) {
      setState(() {
        todos.add(newTodo);
      });
    }
  }
}
*/
import 'package:flutter/material.dart';

import 'input.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Todo> todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

     appBar: AppBar(
        elevation: 0,
        title: const Text( 'T0d0!',
        style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 10),
        ),
        centerTitle: true,
        backgroundColor: Colors.cyan,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),

      /*appBar: AppBar(
        elevation: 0,
        title: const Text('T0d0!'),
        centerTitle: true,
      ),*/
      /*appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'T0d0!',
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none_outlined),
            color: Colors.black,
          ),
        ],
      ),
*/

      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            key: Key(todos[index].title), // Add a key to the Dismissible widget
            onDismissed: (direction) {
              setState(() {
                todos.removeAt(index); // Remove the item from the list
              });
            },
            background: Container(
              color: Colors.redAccent,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: const Icon(Icons.delete, color: Colors.white),
            ),
            secondaryBackground: Container(
              color: Colors.redAccent,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: const Icon(Icons.delete, color: Colors.white),
            ),
            child: ListTile(
              title: Text(todos[index].title),
              subtitle: Text(todos[index].description),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: navigateToInputPage,
        label: const Text('+'),
      ),
    );
  }

  void navigateToInputPage() async {
    final newTodo = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const InputPage()),
    );

    if (newTodo != null) {
      setState(() {
        todos.add(newTodo);
      });
    }
  }
}
