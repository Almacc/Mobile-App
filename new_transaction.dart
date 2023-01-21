import 'package:flutter/material.dart';



class NewTransaction extends StatelessWidget {
  final Function addTx;
  final itemController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  void submitInput(){
    final enteredIntem = itemController.text;
    final enteredAmount = double.parse(amountController.text);
   if (enteredIntem.isEmpty || enteredAmount <= 0){
     return;
   }

    addTx(
        enteredIntem,
        enteredAmount,
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Card(

      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(decoration:
            InputDecoration(labelText: 'Title'),
              controller: itemController,
              onSubmitted: (_) => submitInput(),
            ),
            TextField(decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType : TextInputType.number,
              onSubmitted: (_) => submitInput(),
            ),
            TextButton(onPressed: submitInput, child: Text('Add Transaction')),
          ],
        ) ,
      ),
    );
  }
}
