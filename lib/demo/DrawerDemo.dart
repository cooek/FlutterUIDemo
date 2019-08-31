import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
                color: Colors.yellow[400],
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.blue[400].withOpacity(0.3),
                        BlendMode.hardLight
                    ),
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://resources.ninghao.org/images/childhood-in-a-picture.jpg'))),
            accountEmail: Text('chenke@163.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://i1.hdslb.com/bfs/face/cc8cf693304914375e4e7dc0f72e60c7d6588390.jpg@72w_72h.webp'),
            ),
            accountName: Text('chenke',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              title: Text(
                'Messager',
                textAlign: TextAlign.right,
              ),
              trailing:
              Icon(Icons.message, size: 22.0, color: Colors.grey)),
          ListTile(
              title: Text(
                'loveSpeac',
                textAlign: TextAlign.right,
              ),
              onTap: () {
                Navigator.pop(context);
              },
              trailing:
              Icon(Icons.favorite, size: 22.0, color: Colors.grey)),
          ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              title: Text('bike', textAlign: TextAlign.right),
              trailing: Icon(Icons.directions_bike,
                  size: 22.0, color: Colors.grey))
        ],
      ),
    );
  }
}
