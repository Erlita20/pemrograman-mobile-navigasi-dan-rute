import "package:flutter/material.dart";
import 'package:belanja/models/item.dart';
import 'package:flutter/widgets.dart';
import 'item_page.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', kode: 001, price: 5000, stock: 10),
    Item(name: 'Salt', kode: 002, price: 2000, stock: 7),
    Item(name: 'Egg', kode: 003, price: 10000, stock: 20),
    Item(name: 'Butter', kode: 004, price: 6000, stock: 15),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Belanja',
      theme: ThemeData(
          primarySwatch: Colors.lightGreen,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.list),
          title: Text('Shooping List'),
          backgroundColor: Colors.blue[400],
          centerTitle: true,
        ),
        body: Container(
          color: Colors.white,
          margin: EdgeInsets.all(8),
          child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ItemPage(tempItem: item)),
                  );
                },
                // {
                // Navigator.pushNamed(context, '/item');
                // },
                child: Card(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Expanded(child: Text(item.name)),
                        Expanded(
                          child: Text(
                            item.kode.toString(),
                            textAlign: TextAlign.end,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            item.stock.toString(),
                            textAlign: TextAlign.end,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            item.price.toString(),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
