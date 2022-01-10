import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  const Listview1Screen({Key? key}) : super(key: key);

  final options = const ["Option 1", "Option 2", "Option 3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Center(child: Text('ListView Tipo 1'))),
        body: ListView(
          children: [
            ...options
                .map((option) => ListTile(
                      title: Text(option),
                      trailing: const Icon(Icons.arrow_forward_ios_sharp),
                    ))
                .toList(),
          ],
        ));
  }
}
