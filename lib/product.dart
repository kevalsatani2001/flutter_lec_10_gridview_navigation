import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_lec_10_gridview_navigation/homepage.dart';
import 'package:flutter_lec_10_gridview_navigation/loginpage.dart';

class productpage extends StatefulWidget {
  const productpage({Key? key}) : super(key: key);

  @override
  State<productpage> createState() => _productpageState();
}

class _productpageState extends State<productpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        children: [
          Text("Product Page"),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(MaterialPageRoute(
                builder: (context) => loginpage(),
              ));
            },
            child: Text("go back login page"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
               /*Navigator.of(context).pop(MaterialPageRoute(
                  builder: (context) => homepage()),);*/
            },
            child: const Text(
              "home તમેજોઈ શક",
            ),
          ),
        ],
      )),
    );
  }
}
