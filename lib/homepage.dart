import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_lec_10_gridview_navigation/product.dart';

import 'loginpage.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const Text(
              "Home page",
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => loginpage(),
                ));
              },
              child: const Text(
                "Next page",
              ),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, '/first');
            //   },
            //   child: const Text(
            //     "login screen",
            //   ),
            // ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second');
               /* Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => productpage()),);*/
              },
              child: const Text(
                "product",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
