import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TodHomeScreen(),
    );
  }
}

class TodHomeScreen extends StatelessWidget {
  const TodHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TodoHomeScreen();
  }
}

class TodoHomeScreen extends StatefulWidget {
  const TodoHomeScreen({
    super.key,
  });

  @override
  State<TodoHomeScreen> createState() => _TodoHomeScreenState();
}

class _TodoHomeScreenState extends State<TodoHomeScreen> {

  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter a Task',
                  ),
                  controller: _textController,
                ),
              ),
              ElevatedButton(
                onPressed: (){},
                child: Text("Add"),
              ),
            ],)
        ],
      ),
    );
  }
}
