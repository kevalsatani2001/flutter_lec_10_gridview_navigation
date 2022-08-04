import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_lec_10_gridview_navigation/homepage.dart';
import 'package:flutter_lec_10_gridview_navigation/product.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const Text("Login Page"),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => productpage(),
                ));
              },
              // onLongPress: () {
              //   Navigator.of(context).push(
              //       MaterialPageRoute(builder: (context) => productpage()));
              // },
              child: const Text("product page"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(MaterialPageRoute(
                  builder: (context) => homepage(),
                ));
              },
              child: const Text("go home page"),
            ),
          ],
        ),
      ),
    );
  }
}
