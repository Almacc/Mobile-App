
import 'dart:io';

import 'package:expensestacker/user_transaction.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

  class  MyApp extends StatelessWidget{

    @override
    Widget build(BuildContext context){
      return MaterialApp(
        title: 'Flutter App',
        theme: ThemeData.dark(),
        home: MyHomePage(),
      );
    }
  }

  class MyHomePage extends StatelessWidget{
     final itemController = TextEditingController();
     final amountController = TextEditingController();


    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text('Final Project'),
            actions: <Widget>[
            IconButton(onPressed: (){
              exit(0);
            }, icon: Icon(Icons.exit_to_app_sharp), color: Colors.blue
              ,)
              ,]
        ),
        body: SingleChildScrollView(child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
          //  Total(),

            UserTransactions(),
          ],
        ),
        ),

      );
    }
  }