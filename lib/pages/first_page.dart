import 'package:flutter/material.dart';
import 'package:selftraining3/pages/first_page_p2.dart';
import 'package:selftraining3/pages/first_page_p3.dart';

//This is for drawer
class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });

  }

  final List _pages = [
    const SecondPage(),
    const ThirdPage()
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome"),
        backgroundColor: Colors.cyan,
      ),
       drawer: Drawer(
        backgroundColor: Colors.cyan,
        child : Column(
          children: [
            const DrawerHeader(
              child: Icon(
                Icons.home,
                 size : 48)
            ),

            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              tileColor: Colors.white,
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/homepage');
              },
            ),

              ListTile(
              leading: const Icon(Icons.photo),
              title: const Text("Photo Tiles"),
              tileColor: Colors.white,
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/tilespage');
              },
            ),

            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              tileColor: Colors.white,
              onTap: () {
                 Navigator.pop(context);
                Navigator.pushNamed(context, '/settings');
               
              },
            )
          ],
        )

      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.pages), label: 'Second')
        ]
      ),
    );
  }
 
 }
 

//This is for Bottom Navigator
/*class FirstPage2 extends StatefulWidget {
  const FirstPage2({super.key});

  @override
  State<FirstPage2> createState() => _FirstPage2State();
}

class _FirstPage2State extends State<FirstPage2> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });

  }

  final List _pages = [
    const FirstPage2(),
    const Settings(),
    const TilesPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.photo), label: 'Tiles')
        ]
      ),
    );
  }
} */

/*class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.cyan,
        child : Column(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.home,
                 size : 48)
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home Page"),
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

      );
  }
} */