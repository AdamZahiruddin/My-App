import 'package:flutter/material.dart';



class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.cyan,
      ),
      drawer: Drawer(

        backgroundColor: Colors.cyan,
        child : Column(
          children: [
            const DrawerHeader(
              child: Icon(
                Icons.settings,
                 size : 48)
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              tileColor: Colors.white,
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/homepage');
              },
            ),

              ListTile(
              leading: Icon(Icons.photo),
              title: Text("Photo Tiles"),
              tileColor: Colors.white,
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/tilespage');
              },
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              tileColor: Colors.white,
              onTap: () {
                 Navigator.pop(context);
                Navigator.pushNamed(context, '/settings');
               
              },
            )
          ],
        )

      ),
    body: Column(children: [ 
      ListTile(
        leading: Icon(Icons.sunny),
        title: Text('Appearance'),
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Settings not available yet'),
            backgroundColor: Colors.red,)
          );
        }
      ),
      ListTile(
        leading: Icon(Icons.shield),
        title: Text('Privacy'),
        onTap: (){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Settings not available yet'),
          backgroundColor: Colors.red,));
        }
      ),
      ListTile(
        leading: Icon(Icons.notifications),
        title: Text('Notifications'),
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Settings not available yet'),
          backgroundColor: Colors.red,));
        }
      ),
            ListTile(
        leading: Icon(Icons.info),
        title: Text('About'),
        onTap: () => Navigator.pushNamed(context, '/aboutpage'),
      )
    ],),
    );
  }
}