import 'package:flutter/material.dart';

import './transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Expenses App",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> _transactions = [
    Transaction(id: 't1', title: 'New Shoes', amount: 69.69, date: DateTime.now(),),
    Transaction(id: 't2', title: 'Weekly Groceries', amount: 96.96, date: DateTime.now(),)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Expenses"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget> [
          Container(
            child: Card(
              child: Text("CHART!"),
              elevation: 5,
              color: Colors.blueAccent,
            ),
            width: double.infinity,
          ),
          Column(children: _transactions.map((tx) {
            return Card(
              child: Row(
                children: <Widget> [
                  Container(
                    child: Text(tx.amount.toString()),),
                  Column(children: <Widget>[
                    Text(tx.title),
                    Text(tx.date.toString()),
                  ],),
                ],
              ),
            );
          }).toList(),)
        ],
      ),
    );
  }
}
