import 'package:conversion_form/conversion_form.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Conversion Form')
        ),
        body: const ConversionForm(),
      ),
    );
  }
}