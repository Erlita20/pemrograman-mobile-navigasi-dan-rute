import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  final Item tempItem;
  const ItemPage({Key key, this.tempItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Belanja',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.shopping_cart_outlined),
          title: Text('Detail Belanja'),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Card(
            color: Colors.lightGreenAccent.shade400,
            child: InkWell(
              child: SizedBox(
                width: 800,
                height: 300,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 8),
                        child: Text(
                          "Name : " + tempItem.name,
                          style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Normal',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 8),
                        child: Text(
                          "Kode : " + tempItem.kode.toString(),
                          style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Normal',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 8),
                        child: Text(
                          "Stock : " + tempItem.stock.toString(),
                          style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Normal',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 8),
                        child: Text(
                          "Price : " + tempItem.price.toString(),
                          style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Normal',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                        ),
                        child: RaisedButton(
                          child: Text('Back'),
                          textColor: Colors.white,
                          color: Colors.transparent,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
