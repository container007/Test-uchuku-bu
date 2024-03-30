import 'package:flutter/material.dart';

void main() {
  runApp(DynamicRows ());
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Dynamic Rows',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Dynamic Rows'),
//         ),
//         body: DynamicRows(),
//       ),
//     );
//   }
// }

class DynamicRows extends StatefulWidget {
  @override
  _DynamicRowsState createState() => _DynamicRowsState();
}

class _DynamicRowsState extends State<DynamicRows> {
  List<String> rows = [];

  @override
  void initState() {
    super.initState();
    generateRows();
  }

  void generateRows() {
    String currentRow = "x";
    rows.add(currentRow);
    for (int i = 0; i < 25; i++) {
      currentRow = currentRow + "x" * 2;
      rows.add(currentRow);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView.builder(
        itemCount: rows.length,
        itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(rows[index]),
      );
        },
      ),
    );

  }
}