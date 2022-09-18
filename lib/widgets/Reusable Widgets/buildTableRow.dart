import 'package:flutter/material.dart';
import '../../core/Model/course_model.dart';

TableRow buildTableRow(Course course) {
  return TableRow(
      decoration: const BoxDecoration(color: Colors.purpleAccent),
      children: [
        TableCell(
          child: SizedBox(
            height: 50,
            child: Text(course.id.toString()),
          ),
        ),
        TableCell(
          child: SizedBox(
            height: 50,
            child: Text(course.courseName),
          ),
        ),
        TableCell(
          child: SizedBox(
            height: 50,
            child: Text(course.courseCode),
          ),
        ),
        TableCell(
          child: SizedBox(
            height: 50,
            child: Text(course.courseGrade.toString()),
          ),
        ),
        TableCell(
          child: SizedBox(
            height: 50,
            child: Text(course.courseUnit.toString()),
          ),
        ),
      ]);
}
