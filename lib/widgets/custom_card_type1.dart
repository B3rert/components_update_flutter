import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            title: Text('Soy un titulo'),
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primary,
            ),
            subtitle: Text(
                'Proident occaecat cupidatat est cupidatat esse voluptate esse fugiat sunt laborum ex voluptate. Ex aute magna qui exercitation consequat commodo officia duis id aute duis incididunt. '),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Aceptar'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancelar'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
