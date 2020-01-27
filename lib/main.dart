import 'package:flutter/material.dart';
import 'package:table_multi_scroll/table_multi_scroll/table.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Hardwired data
  final _dataRows = [
    [7, 8, 10, 8, 7],
    [10, 10, 9, 6, 6],
    [5, 4, 5, 7, 5],
    [9, 4, 1, 7, 8],
    [7, 8, 10, 8, 7],
    [10, 10, 9, 6, 6],
    [5, 4, 5, 7, 5],
    [9, 4, 1, 7, 8],
    [7, 8, 10, 8, 7],
    [10, 10, 9, 6, 6],
    [5, 4, 5, 7, 5],
    [9, 4, 1, 7, 8],
    [7, 8, 10, 8, 7],
    [10, 10, 9, 6, 6],
    [5, 4, 5, 7, 5],
    [9, 4, 1, 7, 8]
  ];

  final _fixedColumn = [
    "Pablo",
    "Gustavo",
    "John",
    "Jack",
    "Pablo",
    "Gustavo",
    "John",
    "Jack",
    "Pablo",
    "Gustavo",
    "John",
    "Jack",
    "Pablo",
    "Gustavo",
    "John",
    "Jack",
  ];

  final _fixedRow = [
    "Math",
    "Informatics",
    "Geography",
    "Physics",
    "Biology"
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: CustomDataTable(
          dataRows: _dataRows,
          fixedColumn: _fixedColumn,
          fixedRow: _fixedRow,
          cellBuilder: (data) {
            return Text('$data', style: TextStyle(color: Colors.black45));
          }
        )
      ),
    );
  }
}
