import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({Key? key}) : super(key: key);

  final options = const ["Option 1ss", "Option 2", "Option 3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Center(child: Text('ListView Tipo 1'))),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(options[index]),
            trailing: const Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.indigo,
            ),
            onTap: () {
              print(options[index]);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
