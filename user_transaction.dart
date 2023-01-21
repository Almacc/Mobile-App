import 'package:flutter/material.dart';
import 'new_transaction.dart';
import 'imputlist.dart';
import'transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  UserTransactionsState createState() => UserTransactionsState();
}

class UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> userInput = [
      Transaction(
      id: 't1',
      title: 'Shoes',
      amount: 69.69
      , date: DateTime.now(),
    ),
      Transaction(
        id:'t2',
        title: 'Gas',
        amount: 35.50,
        date: DateTime.now(),
      )
    ];
  get groupedTotalValues {
    double totalSum=0.0;
    for(int i = 0; i < userInput.length; i++ ){
      totalSum += userInput[i].amount;

    }

    return{totalSum};
  }


  void _addNewTransaction(String title, double amount){
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: title,
        amount: amount,
        date: DateTime.now()
    );

    setState((){
      userInput.add(newTx);

    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
    Container(
    width: double.infinity,
      height: 100,
      child: Card(
        color: Colors.lightBlueAccent,
        child: Text("Total Expenses: " + groupedTotalValues.toString(),
            style: TextStyle(fontSize: 35,color: Colors.red), ),
        elevation: 5,
      ),
    ),
      NewTransaction(_addNewTransaction),

      InputList(userInput),
    ]
    );
  }
}
