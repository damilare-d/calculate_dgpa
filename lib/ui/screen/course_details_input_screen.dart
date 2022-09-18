import 'package:flutter/material.dart';

class CourseDetailsInputScreen extends StatefulWidget {
  @override
  _CourseDetailsInputScreenState createState() =>
      _CourseDetailsInputScreenState();
}

class _CourseDetailsInputScreenState extends State<CourseDetailsInputScreen> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape:  RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      title: const Text(
        'Input Course Details',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 25.0,
          color: Colors.purpleAccent,
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/images/listening.gif'),
          const SizedBox(height: 10.0),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Course Name',
            ),
          ),
          const SizedBox(height: 5.0),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Course Code',
            ),
          ),
          const SizedBox(height: 5.0),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Course Grade',
            ),
          ),
          const SizedBox(height: 5.0),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Course Unit',
            ),
          ),
          const SizedBox(height: 15.0),
          TextButton(
              onPressed: () {},
              child: const Text(
                'ADD',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.purpleAccent,
                ),
              )),
        ],
      ),
    );
  }
}
