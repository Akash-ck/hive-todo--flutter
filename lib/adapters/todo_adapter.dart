// @dart=2.9
import 'package:build_runner/build_runner.dart';
import 'package:hive/hive.dart';

part 'todo_adapter.g.dart';

@HiveType(typeId: 1)
class Todo {
  @HiveField(0)
  String title;
  @HiveField(1)
  String description;

  Todo({this.title, this.description});
}
