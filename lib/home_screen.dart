import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Sample data for grid items
  final List<GridItem> gridItems = [
    GridItem(icon: Icons.home, text: 'Home'),
    GridItem(icon: Icons.person, text: 'Profile'),
    GridItem(icon: Icons.settings, text: 'Settings'),
    GridItem(icon: Icons.mail, text: 'Messages'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: GridView.builder(
        itemCount: gridItems.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        padding: EdgeInsets.all(10.0),
        itemBuilder: (context, index) {
          return GridTile(
            child: Card(
              elevation: 5,
              color: Colors.blueGrey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    gridItems[index].icon,
                    size: 50.0,
                    color: Colors.white,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    gridItems[index].text,
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// Model class for grid items
class GridItem {
  final IconData icon;
  final String text;

  GridItem({required this.icon, required this.text});
}
