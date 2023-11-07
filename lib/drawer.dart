import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Deepa'),
            accountEmail: Text('deepa7021@gmail.com'),
          ),
          ListTile(
              leading: Icon(Icons.account_circle),
              title: Text(
                'Profile',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              onTap: () => print('profile section')),
          ListTile(
              leading: Icon(
                Icons.favorite_border,
                color: Colors.black54,
              ),
              title: Text(
                'Favourite',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              onTap: () => print('favorite section')),
          ListTile(
              leading: Icon(Icons.message),
              title: Text(
                'Messages',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              onTap: () => print('Messages tapped')),
          ListTile(
              leading: Icon(Icons.share),
              title: Text(
                'Share',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              onTap: () => print('share tapped')),
          ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'Setting',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              onTap: () => print('Setting section')),
        ],
      ),
    );
  }
}
