import 'package:flutter/material.dart';
import 'package:flutter_application_7/home_page.dart';
import 'package:flutter_application_7/items_data.dart';
import 'package:flutter_application_7/profile.dart';
import 'package:flutter_application_7/shopping_cart.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Home(),
    ShoppingCart(),
    ListItems(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            icon: Icon(Icons.person_outlined),
            color: Colors.black,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Inbox'),
              onTap: () {
              },
            ),
            ListTile(
              title: Text('Daftar Transaksi'),
              onTap: () {
              },
            ),
            ListTile(
              title: Text('Ulasan'),
              onTap: () {
              },
            ),
            ListTile(
              title: Text('Wishlist'),
              onTap: () {
              },
            ),
            ListTile(
              title: Text('Favorit'),
              onTap: () {
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Shop',
            icon: Icon(Icons.shopping_cart_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Cart',
            icon: Icon(Icons.add_chart_outlined),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
