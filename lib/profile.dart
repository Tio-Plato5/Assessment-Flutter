import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.red, Colors.purple],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            height: 200,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/profilephoto.jpg'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Tio Kusuma',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Just Someone Who Wants to Enjoy life',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Informasi Profil',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('Email: example@example.com'),
                  Text('Nomor Telepon: 123-456-7890'),
                  Text('Alamat: Jakarta, Indonesia'),
                  Text('Tanggal Lahir: 05/18/05'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
