import 'package:flutter/material.dart';
import 'package:my_first_app_flutter/models/appRoutes.dart';
import 'package:my_first_app_flutter/widgets/appbar_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final options = AppRoutes().options;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
        title: 'Home Screen',
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          final option = options[index];
          return ListTileOption(
            title: option.title,
            icon: option.icon,
            route: option.route,
          );
        },
        separatorBuilder: (context, index) => Divider(),
        itemCount: options.length,
      ),
    );
  }
}

class ListTileOption extends StatelessWidget {
  final String title;
  final Icon icon;
  final String route;

  const ListTileOption({
    super.key,
    required this.title,
    required this.icon,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: icon,
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}