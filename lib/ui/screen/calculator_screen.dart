import 'package:calculate_dgpa/widgets/Reusable%20Widgets/buildTableRow.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Table(
            border: TableBorder.symmetric(
                inside: const BorderSide(width: 1, color: Colors.blue),
                outside: const BorderSide(width: 1)),
            columnWidths: const {
              0: FractionColumnWidth(0.5),
              1: FractionColumnWidth(0.2),
              2: FractionColumnWidth(0.15),
              3: FractionColumnWidth(0.15),
            },
            children: [
              //courses.map((course) => buildTableRow(course)).toList(),
              const TableRow(children: [
                Text('Course Name'),
                Text('Course code'),
                Text('Grade'),
                Text('Credits')
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
