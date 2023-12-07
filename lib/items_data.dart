import 'package:flutter/material.dart';
import 'package:flutter_application_7/form_input_items.dart';

class CustomListItem {
  final String imagePath;
  final String title;
  final String price;

  CustomListItem({
    required this.imagePath,
    required this.title,
    required this.price,
  });
}

class ListItems extends StatefulWidget {
  @override
  _TablePageState createState() => _TablePageState();
}

class _TablePageState extends State<ListItems> {
  final List<CustomListItem> items = [
    CustomListItem(imagePath: 'images/hotdogs.jpg', title: 'hotdog original', price: '30.000'),
    CustomListItem(imagePath: 'images/teh.jpeg', title: 'teh', price: '15.000'),
    CustomListItem(imagePath: 'images/burgers.jpeg', title: 'cheese burger', price: '20.000'),
    CustomListItem(imagePath: 'images/redvelvet.jpg', title: 'red velvet cake', price: '25.000'),
    CustomListItem(imagePath: 'images/tehkotak.jpg', title: 'teh kotak', price: '5.000'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
        ],
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MyForm();
                  },
                ),
              );
            },
            child: Text("Add"),
          ),
          DataTable(
            columns: [
              DataColumn(label: Text('Image')),
              DataColumn(label: Text('Title')),
              DataColumn(label: Text('Price')),
              DataColumn(label: Text('Actions')),
            ],
            rows: items.map(
              (item) => DataRow(
                cells: [
                  DataCell(Image.asset(item.imagePath, width: 50.0, height: 50.0)),
                  DataCell(Text(item.title)),
                  DataCell(Text(item.price)),
                  DataCell(Icon(Icons.restore_from_trash, color: Colors.red.shade900)),
                ],
              ),
            ).toList(),
            // ignore: deprecated_member_use
            dataRowHeight: 100.0,
          ),
        ],
      ),
    );
  }
}