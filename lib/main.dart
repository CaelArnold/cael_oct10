import 'package:flutter/material.dart';
//import './dartpad.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TodoHomeScreen(),
    );
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

  List<String> myList = [];

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
                  controller: _textController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter a Task',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  print("Button pressed text: ${_textController.text}");
                  setState(() {
                    myList.add(_textController.text);
                  });
                },
                child: Text("+ Add"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
