import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:radio_button_provider/controller.dart';

class Display extends StatelessWidget {
  const Display({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Display'),
        centerTitle: true,
      ),
      body: Center(
          child: Text(
        Provider.of<ChangeButtonProvider>(context, listen: false).selectRadio,
        style: const TextStyle(fontSize: 25),
      )),
    );
  }
}
