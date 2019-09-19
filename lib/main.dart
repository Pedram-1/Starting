import 'package:flutter/material.dart';

import './Profile.dart';
import './Search.dart';
import './People.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int _selectedPage = 0;
  final _pageOptions = [ProfilePage(), SearchPage(), PeoplePage()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Friends App'),
        ),
        body: _pageOptions[_selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPage,
          onTap: (int index) {
            setState(() {
              _selectedPage = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text('Profile')),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), title: Text('Search')),
            BottomNavigationBarItem(
                icon: Icon(Icons.people), title: Text('People')),
          ],
        ),
      ),
    );
  }
}
