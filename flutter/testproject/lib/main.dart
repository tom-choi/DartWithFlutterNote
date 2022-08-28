import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(home: IDCard(),));

class IDCard extends StatefulWidget{
  @override
  State<IDCard> createState() => _IDCardState();
}

class _IDCardState extends State<IDCard> {

  int Bank_Level = 0;

  List<Quote> quotes = [
    Quote(author:'Oscar Wilde',text: 'this is the quote test'),
    Quote(author:'Oscar Wilde',text: 'this is the quote test'),
    Quote(author:'Oscar Wilde',text: 'this is the quote test'),
  ];

  Widget qutoeTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 1.0,),
            Row(
                children: <Widget>[
                  Text(
                    quote.author,
                    style: TextStyle(
                      fontSize: 10.0,
                      color:Colors.black,
                    ),
                  ),
                ]
            ),
          ],
        ),
      ),
      color: Colors.blueAccent,
    );
  }

  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Google ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            Bank_Level += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('asserts/AOh14GhDhRBs5Io0sk5AfsOAZLWzpaTSlQQbTaye9fiGhQs432-p-rw-no.png'),
                radius: 100.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.blueGrey[200],
            ),
            Text('NAME',
              style: TextStyle(
              color: Colors.grey,
                letterSpacing: 2.0,
            ),),
            SizedBox(height: 2.0,),
            Text('tom-ci',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),),
            SizedBox(height: 10.0,),
            Text('CURRENT BANK LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),),
            SizedBox(height: 2.0,),
            Text('$Bank_Level',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),),
            SizedBox(height: 5.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400]
                ),
                SizedBox(width: 3.0,),
                Text(
                  'cvb233299@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[500]
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            SizedBox(height: 5.0,),
            Text('QUETOS',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),),
            SizedBox(height: 3.0,),
            Column(
              children: quotes.map((quote) => qutoeTemplate(quote)).toList(),
            )
          ],
        ),
      ),
    );
  }
}

