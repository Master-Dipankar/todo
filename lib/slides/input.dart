import 'package:flutter/material.dart';

/*
class InputPage extends StatelessWidget {

  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  bool canSubmit = false;

  @override
  void initState() {
    super.initState();

    // Check if the fields are empty initially
    checkFields();
  }

  void checkFields() {
    setState(() {
      canSubmit = titleController.text.isNotEmpty &&
          descriptionController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your ToDo!'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: const InputDecoration(hintText: 'Title'),
              controller: titleController,
              onChanged: (_) => checkFields(),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(hintText: 'Description'),
              keyboardType: TextInputType.multiline,
              minLines: 5,
              maxLines: 8,
              controller: descriptionController,
              onChanged: (_) => checkFields(),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: canSubmit
                  ? () {
                final newTodo = Todo(
                  title: titleController.text,
                  description: descriptionController.text,
                );
                Navigator.pop(context, newTodo);
              }
                  : null,
              child: const Text('Submit'),
            )
          ],
        ),
      ),
    );
  }
}

class Todo {
  final String title;
  final String description;

  Todo({
    required this.title,
    required this.description,
  });
}*/

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  bool canSubmit = false;

  @override
  void initState() {
    super.initState();
    checkFields();
  }

  void checkFields() {
    setState(() {
      canSubmit = titleController.text.isNotEmpty &&
          descriptionController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your ToDo!'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: const InputDecoration(hintText: 'Title'),
              controller: titleController,
              onChanged: (_) => checkFields(),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(hintText: 'Description'),
              keyboardType: TextInputType.multiline,
              minLines: 5,
              maxLines: 8,
              controller: descriptionController,
              onChanged: (_) => checkFields(),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: canSubmit
                  ? () {
                final newTodo = Todo(
                  title: titleController.text,
                  description: descriptionController.text,
                );
                Navigator.pop(context, newTodo);
              }
                  : null,
              child: const Text('Submit'),
            )
          ],
        ),
      ),
    );
  }
}

class Todo {
  final String title;
  final String description;

  Todo({
    required this.title,
    required this.description,
  });
}
