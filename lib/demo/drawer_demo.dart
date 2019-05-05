import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text('Monica',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  accountEmail: Text('333333@qq.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage('http://127.0.0.1/112.jpeg'),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.yellow[400],
                    image: DecorationImage(
                        image: NetworkImage('http://127.0.0.1/111.jpeg'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.yellow[400].withOpacity(0.6),
                            BlendMode.hardLight)),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Message',
                    textAlign: TextAlign.right,
                  ),
                  trailing: Icon(
                    Icons.message,
                    size: 22.0,
                    color: Colors.black12,
                  ),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  title: Text(
                    'Followers',
                    textAlign: TextAlign.right,
                  ),
                  trailing: Icon(
                    Icons.favorite,
                    size: 22.0,
                    color: Colors.black12,
                  ),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  title: Text(
                    'Settings',
                    textAlign: TextAlign.right,
                  ),
                  trailing: Icon(
                    Icons.settings,
                    size: 22.0,
                    color: Colors.black12,
                  ),
                  onTap: () => Navigator.pop(context),
                )
              ],
            ),
          );
  }
}