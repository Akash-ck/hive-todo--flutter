// @dart=2.9
import 'package:akash/views/todo_view.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'package:hive_flutter/hive_flutter.dart';

import 'adapters/todo_adapter.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(TodoAdapter());
  await Hive.openBox<Todo>('todos');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: TodoView(),
    );
  }
}
