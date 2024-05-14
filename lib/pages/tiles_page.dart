import 'package:flutter/material.dart';



class TilesPage extends StatelessWidget {
  const TilesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Photos")),
      appBar: AppBar(
        title: Text('Photo Tiles'),
        backgroundColor: Colors.cyan,
      ),
      drawer: Drawer(
        backgroundColor: Colors.cyan,
        child : Column(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.photo,
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
    );
    
  }
}