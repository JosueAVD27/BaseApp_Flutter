import 'package:agenda/views/drawer/profile.dart';
import 'package:agenda/views/drawer/settings.dart';
import 'package:flutter/material.dart';

class DrawerApp extends StatefulWidget {
  const DrawerApp({super.key});
  @override
  DrawerState createState() => DrawerState();
}

class DrawerState extends State<DrawerApp> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: const Text("Josue Velasquez"),
            accountEmail: const Text("josuearmando814@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.purple.shade900,
              child: const Text('J', style: TextStyle(fontSize: 40.0, color: Colors.white), textAlign: TextAlign.center),
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text('Perfil'),
            leading: const Icon(Icons.person),
            selected: false,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CrudApp()),
              );
            },
          ),
          ListTile(
            title: const Text('Configuraciones'),
            leading: const Icon(Icons.settings),
            selected: false,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Settings()),
              );
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Cerrar sesión'),
            leading: const Icon(Icons.logout),
            selected: false,
            onTap: () {

            },
          ),
        ],
      ),
    );
  }
}
