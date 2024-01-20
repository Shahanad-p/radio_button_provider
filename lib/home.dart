import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:radio_button_provider/controller.dart';
import 'package:radio_button_provider/display.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio button provider'),
        centerTitle: true,
      ),
      body: Center(
        child: Consumer<ChangeButtonProvider>(
          builder: (context, value, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RadioListTile(
                    title: const Text('Apple'),
                    value: 'Apple',
                    groupValue: value.selectRadio,
                    onChanged: (dataValue) {
                      value.buttonChange(dataValue.toString());
                    }),
                RadioListTile(
                    title: const Text('Orange'),
                    value: 'Orange',
                    groupValue: value.selectRadio,
                    onChanged: (dataValue) {
                      value.buttonChange(dataValue.toString());
                    }),
                RadioListTile(
                    title: const Text('Grape'),
                    value: 'Grape',
                    groupValue: value.selectRadio,
                    onChanged: (dataValue) {
                      value.buttonChange(dataValue.toString());
                    }),
                const SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Display()));
                    },
                    child: const Text('Add')),
              ],
            );
          },
        ),
      ),
    );
  }
}
