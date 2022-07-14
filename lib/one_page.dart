import 'package:flutter/material.dart';
import 'package:navproj/two_page.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              // ignore: avoid_print
              Navigator.of(context)
                  .pushNamed('/twopage', arguments: 'teste')
                  .then((value) => print(value));
            },
            child: Text('Ir para Segunda pág.')),
      ),
    );
  }
}
