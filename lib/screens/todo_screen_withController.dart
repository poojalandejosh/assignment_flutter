import 'package:assignment_flutter/screens/todo_controller.dart';
import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoState();
}

class _TodoState extends State<TodoApp> {
  final TextEditingController _ctrl = TextEditingController();
  final TodoController _controller = TodoController();

  @override
  void dispose() {
    _ctrl.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Todo App")),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _ctrl,
                      decoration: const InputDecoration(hintText: "Enter todo"),
                    ),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {
                      _controller.addTodos(_ctrl.text);
                      _ctrl.clear();
                      setState(() {}); // Refresh the UI
                    },
                    child: const Text("Add"),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Expanded(
                child: _controller.todos.isEmpty
                    ? const Text("No todos yet.")
                    : ListView.builder(
                        itemCount: _controller.todos.length,
                        itemBuilder: (context, i) {
                          final todo = _controller.todos[i];
                          return Card(
                            margin: const EdgeInsets.symmetric(vertical: 6),
                            child: ListTile(
                              title: Text(todo),
                              trailing: IconButton(
                                icon: const Icon(Icons.delete),
                                onPressed: () {
                                  _controller.removedTodos(i);
                                  setState(() {}); // Refresh after delete
                                },
                              ),
                            ),
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
