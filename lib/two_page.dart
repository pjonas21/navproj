import 'package:flutter/material.dart';

class TwoPage extends StatelessWidget {
  const TwoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as String;
    // a exclamação garante a passagem de um argumento, mesmo que ele esteja como required
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.amber.shade100,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop('retorno');
            }
          },
          child: Text('Voltar para pág anterior $args.'),
        ),
      ),
    );
  }
}
