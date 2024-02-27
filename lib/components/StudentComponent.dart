import 'package:first_app/repo/Student.dart';
import 'package:flutter/material.dart';

class StudentComponent extends StatefulWidget {
  StudentComponent({super.key,required this.student});
  Student student;
  
  @override
  State<StudentComponent> createState() => StudentState(student: this.student);
}

class StudentState extends State<StudentComponent>
{
  StudentState({required this.student});
  Student student;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(student.getFullName()),
        IconButton(onPressed: () => 
          {
            setState(() {
              Navigator.pushNamed(context, "/students?id=" + student.id);
            })
          }, 
          icon: Icon(Icons.remove_red_eye)
        ),
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