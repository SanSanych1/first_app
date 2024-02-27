import 'dart:math';

import 'package:first_app/components/StudentListComponent.dart';
import 'package:first_app/components/StudentPageComponent.dart';
import 'package:first_app/repo/Student.dart';
import 'package:first_app/repo/repo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class SomethingComponent extends StatelessWidget {
  const SomethingComponent({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[Text("Hello"), NavigationComponent()],
    );
  }
}

class NavigationComponent extends StatelessWidget {
  const NavigationComponent({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextButton(
        child: Text("Студенты"),
        onPressed: () => {Navigator.pushNamed(context, "/students")},
      )
    ]);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        if(settings.name == "/"){
          return MaterialPageRoute(
            builder: (context) {
              return StudentListComponent(students: studentsRepo);
            },
          );
        }
        else if(settings.name!.startsWith("/students?id=")){
          return MaterialPageRoute(
            builder: (context) {
              Uri uri = Uri.parse(settings.name!);
              return StudentPageComponent(
                student: studentsRepo.firstWhere(
                  (element) => element.id == uri.queryParameters["id"]
                )
              );
            },
          );
        }
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        colorSchemeSeed: Color(25),
        useMaterial3: true,
      ),
      // routes: {
      //   "/": (context) => Scaffold(body: SomethingComponent()),
      //   "/students": (context) => StudentListComponent(students: studentsRepo),
      //   "/students/student": (context) => Text("qwe"),
      // }
    );
  }
}
