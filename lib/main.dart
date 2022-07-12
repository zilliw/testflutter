import 'package:flutter/material.dart';

const backgroundColor = Color(0xFFFFFBF7);
const backgroundNavBar = Color(0xFFFFFBF7);
const backgroundInput = Color(0xFF52443D);
const title = Color(0xFF1E1B16);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Container(),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: Container(
        color: Colors.white,
        padding: EdgeInsets.all(1),
        child: const FlutterLogo(
          size: 3,
        )
      ),
      title: Text('Obladi Music'),
      backgroundColor: Colors.blue,
    );
  }
}

class MyBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: backgroundNavBar,
        items: const <BottomNavigationBarItem> [
      BottomNavigationBarItem(
          icon: Icon(Icons.search), label: 'Search'),
      BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline), label: 'Favorite'),
      BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month_outlined), label: 'Calendar'),
      BottomNavigationBarItem(
          icon: Icon(Icons.messenger_outline), label: 'Message'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: 'Profile'),
    ]
    );
  }
}