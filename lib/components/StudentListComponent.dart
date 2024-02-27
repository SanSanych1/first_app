import 'package:first_app/components/StudentComponent.dart';
import 'package:first_app/repo/Student.dart';
import 'package:flutter/material.dart';

 class StudentListComponent extends StatefulWidget {
  const StudentListComponent({super.key,required this.students});
  final List<Student> students;
  
  @override
  State<StudentListComponent> createState() => StudentListState(students: this.students);
}

class StudentListState extends State<StudentListComponent>
{
  StudentListState({required this.students});
  List<Student> students;
  Object? args;
  
  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   args = ModalRoute.of(context)?.settings.arguments;
  // }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(children: students.map((it) => StudentComponent(student: it)).toList()),
        TextButton(onPressed: () => { Navigator.pop(context) }, child: Text("Back"))
      ]
    );
  }
}