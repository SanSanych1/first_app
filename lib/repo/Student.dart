import 'package:uuid/uuid.dart';

class Student{
  Student({required this.surname, required this.name, required this.group, required this.grade});

  var id = Uuid().v8();

  String surname;
  String name;
  String group;
  int grade;

  void updateGrade(int newValue) {
    grade = newValue;
  }

  String getFullName() => "$surname $name ($group)";
}