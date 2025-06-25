import 'package:flutter/material.dart';

class TodoController extends ChangeNotifier {
  final List<String> _todos = [];
  List<String> get todos => List.unmodifiable(_todos);

  void addTodos(String text) {
    final checkText = text.trim();
    if (checkText.isEmpty) return;
    _todos.add(checkText);
    notifyListeners();
  }

  void removedTodos(int index) {
    if (index < 0 || index >= _todos.length) return;
    _todos.removeAt(index);
    notifyListeners();
  }
}
