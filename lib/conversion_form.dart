import 'package:conversion_form/converter.dart';
import 'package:flutter/material.dart';

class _ConversionFormState extends State<ConversionForm> {
  final _formKey = GlobalKey<FormState>();
  final _textController = TextEditingController();

  String _hexadecimalValue = "";

  String? _validate(String? value) {
    if(value == null || value.isEmpty) {
      return 'Por favor insira uum número binário';
    }

    return null;
  }

  void _handleSubmit() {
    setState(() {
      _hexadecimalValue = Converter.binaryToHexadecimal(_textController.text);
    });
    _formKey.currentState!.validate();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(children: [
        TextFormField(
          controller: _textController,
          validator: _validate
        ),
        ElevatedButton(onPressed: _handleSubmit, child: const Text('Submit')),
        if(_hexadecimalValue.isNotEmpty) Text('O número ${_textController.text} em hexadecimal é $_hexadecimalValue') 
      ],)
    );
  }
}

class ConversionForm extends StatefulWidget {
  const ConversionForm({super.key});

  @override
  State<ConversionForm> createState() => _ConversionFormState();
}