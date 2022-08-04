import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class gridview extends StatefulWidget {
  const gridview({Key? key}) : super(key: key);

  @override
  State<gridview> createState() => _gridviewState();
}

class _gridviewState extends State<gridview> {
  List<String> products = [
    "phone",
    "Tablet",
    "Computer",
    "Laptop",
    "Mouse",
    "Keybord",
    "cabine"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.abc),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 0,
        //childAspectRatio: 0.5,
        padding: EdgeInsets.all(10),
        //reverse: true,
        children: products
            .map(
              (e) => Card(
                color: Colors.red,
                child: Center(child: Text(e)),
              ),
            )
            .toList(),
      ),
    );
  }
}
