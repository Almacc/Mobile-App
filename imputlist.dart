import 'package:flutter/material.dart';
import './transaction.dart';

class InputList extends StatelessWidget {
  final List<Transaction> transaction;

  InputList(this.transaction){
    this.transaction;
  }

  @override
  Widget build(BuildContext context) {
    return  Column(children: transaction.map((tx) {
      return Card(
        child: Row(children: <Widget> [
          Container(
            margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 15
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.red,
                width: 2,
              ),
            ),
            padding:EdgeInsets.all(10),
            child: Text(
              '\$${tx.amount.toStringAsFixed(2)}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.red,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                tx.title,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text(
                tx.date.toString(),
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
            ],
          ),
        ],),
      );
    }).toList(),

    );

  }
}
