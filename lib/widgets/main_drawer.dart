import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Container(
          height: 220,
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          color: Colors.orangeAccent,
          child: const Text(
            'Cooking up',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: Colors.pink),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ListTile(
          leading: const Icon(
            Icons.restaurant,
            size: 26,
          ),
          title: const Text(
            'Meals',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/');
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.settings,
            size: 26,
          ),
          title: const Text(
            'Filters',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          onTap: () {
             Navigator.of(context).pushReplacementNamed('/filters');
          },
        )
      ]),
    );
  }
}
