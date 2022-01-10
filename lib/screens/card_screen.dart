import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Card Widget')),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl:
                'https://i.pinimg.com/originals/48/96/17/489617a61ca6c87e767cb6e11d1734f0.jpg',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl:
                'http://images6.fanpop.com/image/photos/39200000/San-and-Moro-studio-ghibli-39254778-2000-1000.jpg',
            descriptionImage: 'La princesa Mononoke',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl:
                'https://www.wallpaperkiss.com/wimg/b/176-1768020_big.jpg',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl:
                'https://images4.alphacoders.com/105/thumb-1920-1058568.jpg',
            descriptionImage: 'Susurros del corazón',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl:
                'https://www.mubis.es/media/users/6266/114088/bolson-cerrado-estilo-ghibli-original.jpg',
          ),
        ],
      ),
    );
  }
}
