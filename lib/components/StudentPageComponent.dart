import 'package:first_app/components/StudentComponent.dart';
import 'package:first_app/repo/Student.dart';
import 'package:flutter/material.dart';

 class StudentPageComponent extends StatefulWidget {
  const StudentPageComponent({super.key,required this.student});
  final Student student;
  
  @override
  State<StudentPageComponent> createState() => StudentPageState(student: this.student);
}

class StudentPageState extends State<StudentPageComponent>
{
  StudentPageState({required this.student});
  Student student;
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
        Text(student.getFullName()),
        
        // Text(student.grade.toString()),
        // IconButton(onPressed: () => 
        //   {
        //     setState(() {
        //       student.updateGrade(student.grade+1);
        //     })
        //   }, 
        //   icon: Icon(Icons.plus_one)
        // ),
      ],
    );
  }
}