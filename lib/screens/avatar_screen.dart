import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Avatar Screen'),
        ),
        actions: [
          Container(
            margin: const EdgeInsetsDirectional.only(end: 16),
            child: CircleAvatar(
              child: const Text("SL"),
              backgroundColor: Colors.indigo[900],
            ),
          ),
        ],
      ),
      //https://miro.medium.com/max/3840/1*KEkbjgU7pboTtYuRIO1rNA.jpeg
      body: const Center(
        child: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://miro.medium.com/max/3840/1*KEkbjgU7pboTtYuRIO1rNA.jpeg'),
          radius: 150,
        ),
      ),
    );
  }
}
