import 'package:flutter/material.dart';
import 'package:k/Mapp.dart';
class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
              onTap: () =>
                  Navigator.of(context).pushReplacement(MaterialPageRoute
                    (builder: (context)=>const Mapp()))
          ),

          Divider(),
          ListTile(
            leading: Icon(Icons.support),
            title: Text('Suppoer'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(

            leading: Icon(Icons.share),
            title: Text('Share'),
            onTap: () =>null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}