import 'package:flutter/material.dart';
import 'package:flutter_application_7/navbar.dart';

class MyForm extends StatefulWidget {
  @override
  _InputFormState createState() => _InputFormState();
}

class _InputFormState extends State<MyForm> {
  String _nama = '';
  String _harga = '';
  String? _kategori = 'Pilihan';
  String _img = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          // Back
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: CircleAvatar(
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                color: Colors.red.shade900,
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Nav();
                      },
                    ),
                  );
                },
              ),
              backgroundColor: Colors.white,
            ),
          ),
          // End Back
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Nama Produk
            SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Nama Produk',
              ),
              onChanged: (String value) {
                setState(() {
                  _nama = value;
                });
              },
            ),

            // Harga
            SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Harga',
              ),
              onChanged: (String value) {
                setState(() {
                  _harga = value;
                });
              },
            ),

            // Kategori
            SizedBox(height: 10),
            DropdownButton<String>(
              value: _kategori,
              onChanged: (value) {
                setState(() {
                  _kategori = value;
                });
              },
              items: <String>['Pilihan', 'Makanan', 'Minuman', 'Lainnya']
                  .map<DropdownMenuItem<String>>(
                    (String value) => DropdownMenuItem<String>(
                      child: Text(value),
                      value: value,
                    ),
                  )
                  .toList(),
            ),

            // Image
            SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Link Gambar',
              ),
              onChanged: (String link) {
                setState(() {
                  _img = link;
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Submit'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Nama Item $_nama'),
                          Text('Harga $_harga'),
                          Text('Kategori $_kategori'),
                          Text('$_img'),
                        ],
                      ),
                    );
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}