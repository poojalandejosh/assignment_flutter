import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoState();
}

class _TodoState extends State<TodoApp> {
  final TextEditingController _ctrl = TextEditingController();
  final List<String> _todos = [];

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  void _addTodo(String text) {
    final trimmed = text.trim();
    if (trimmed.isEmpty) return;

    setState(() {
      _todos.add(trimmed);
      _ctrl.clear();
    });
  }

  void _removeTodo(int index) {
    setState(() {
      _todos.removeAt(index);
    });
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
                      decoration: const InputDecoration(
                        hintText: "Enter todo",
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () => _addTodo(_ctrl.text),
                    child: const Text("Add"),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Expanded(
                child: _todos.isEmpty
                    ? const Center(child: Text("No todos yet."))
                    : ListView.builder(
                        itemCount: _todos.length,
                        itemBuilder: (context, i) {
                          final todo = _todos[i];
                          return Card(
                            margin: const EdgeInsets.symmetric(vertical: 6),
                            child: ListTile(
                              title: Text(todo),
                              trailing: IconButton(
                                icon: const Icon(Icons.delete),
                                onPressed: () => _removeTodo(i),
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
