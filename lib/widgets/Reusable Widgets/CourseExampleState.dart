import 'package:flutter/material.dart';
import 'package:calculate_dgpa/core/Model/course_model.dart';
import 'package:calculate_dgpa/widgets/Reusable Widgets/buildTableRow.dart';

class CoursesDetailsExamples extends StatefulWidget {
  const CoursesDetailsExamples({Key? key}) : super(key: key);

  @override
  State<CoursesDetailsExamples> createState() => _CoursesDetailsExamplesState();
}

class _CoursesDetailsExamplesState extends State<CoursesDetailsExamples> {
  List<Course> courses = [];
  @override
  void initState() {
    super.initState();
    setState(() {
      courses = _generateCourses();
    });
  }

  List<Course> _generateCourses() {
    return List.generate(5, (int index) {
      return Course(
        id: index,
        courseName: '',
        courseCode: '',
        courseUnit: 005,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Table(
        border: TableBorder.symmetric(
            inside: const BorderSide(width: 1, color: Colors.blue),
            outside: const BorderSide(width: 1)),
        columnWidths: const {
          0: FractionColumnWidth(0.5),
          1: FractionColumnWidth(0.2),
          2: FractionColumnWidth(0.15),
          3: FractionColumnWidth(0.15),
        },
        children: courses.map((course) => buildTableRow(course)).toList(),
      ),
    );
  }
}
