import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListViews',
      // theme: ThemeData(
      //   primarySwatch: Colors.teal,
      // ),
      home: Scaffold(
        appBar: AppBar(title: Text('About')),
        body: BodyLayout(),
      ),
    );
  }
}

// class BodyLayout extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return _myListView(context);
//   }
// }

// Widget _myListView(BuildContext context) {
//   return ListView(
//     children: <Widget>[
//       ListTile(
//         leading: Icon(Icons.person),
//         title: Text('Account'),
//       ),
//       ListTile(
//         leading: Icon(Icons.notifications),
//         title: Text('Notification'),
//       ),
//       ListTile(
//         leading: Icon(Icons.star),
//         title: Text('Privacy'),
//       ),
//       ListTile(
//         leading: Icon(Icons.security),
//         title: Text('Security'),
//       ),
//       ListTile(
//         leading: Icon(Icons.help),
//         title: Text('Help'),
//       ),
//       ListTile(
//         leading: Icon(Icons.star),
//         title: Text('About'),
//       ),
//       ListTile(
//           leading: Icon(
//             Icons.logout,
//             color: Colors.red,
//           ),
//           title: Text(
//             'Logout',
//             style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
//           )),
//     ],
//   );
// }

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Hero(
            tag: 'Profile',
            child: CircleAvatar(
              backgroundImage: const AssetImage('././assets/images/fotojer.jpeg'),
              radius: 80,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Flutter Developer',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
            width: 180,
            child: Divider(
              color: Colors.black,
              thickness: 6,
            ),
          ),
          Card(
            margin: EdgeInsets.only(top: 20, left: 10, right: 10),
            color: Colors.blueAccent,
            child: ListTile(
              leading: Icon(Icons.verified_user),
              title: Text('Rogerio Che Guevara Martins Lopes'),
              contentPadding: EdgeInsets.all(8),
            ),
          ),
          Card(
            margin: EdgeInsets.only(top: 20, left: 10, right: 10),
            color: Colors.blueAccent,
            child: ListTile(
              leading: Icon(Icons.email),
              title: Text('lopesrogerio739@gmail.com'),
              contentPadding: EdgeInsets.all(8),
            ),         
          ),
          Card(
            margin: EdgeInsets.only(top: 20, left: 10, right: 10),
            color: Colors.blueAccent,
            child: ListTile(
              leading: Icon(Icons.data_usage),
              title: Text('42030061'),
              contentPadding: EdgeInsets.all(8),
            ),
          ),
          // Card(
          //   margin: EdgeInsets.only(top: 20, left: 10, right: 10),
          //   color: Colors.amber,
          //   child: ListTile(
          //     leading: Icon(Icons.verified),
          //     title: Text('Hello Word'),
          //     contentPadding: EdgeInsets.all(8),
          //   ),
          // ),
        ],
      ),
    );
  }
}