import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Componentes en Flutter')),
      ),
      body: ListView.separated(
          itemBuilder: (contex, index) => ListTile(
                title: Text(menuOptions[index].name),
                leading: Icon(
                  menuOptions[index].icon,
                  color: AppTheme.primary,
                ),
                onTap: () =>
                    {Navigator.pushNamed(context, menuOptions[index].route)},
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOptions.length),
    );
  }
}
