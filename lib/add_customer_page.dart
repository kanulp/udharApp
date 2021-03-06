import 'package:flutter/material.dart';
import 'package:udhar_app/transaction_page.dart';

class AddCustomerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add New Customer'),),
      body: Column(children: [
        Container(
            margin: EdgeInsets.all(10.0),
            alignment: Alignment.center,
            child: TextField(
              cursorColor: Colors.green,
              decoration: InputDecoration(
                focusColor: Colors.green,
                labelText: 'Name',
                prefixIcon: Icon(Icons.person),
                hintText: "Enter Name of your Customer",
                border: OutlineInputBorder(
                  
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(
                    color: Colors.green,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
            ),
          ),
        Container(
            margin: EdgeInsets.all(10.0),
            alignment: Alignment.center,
            child: TextField(
              cursorColor: Colors.green,
              decoration: InputDecoration(
                focusColor: Colors.green,
                labelText: 'Mobile',
                prefixIcon: Icon(Icons.phone_android),
                hintText: "Enter mobile no",
                border: OutlineInputBorder(
                  
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(
                    color: Colors.green,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.all(10.0),
              width: double.infinity, 
              height: 60.0,
              child: RaisedButton(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.greenAccent)),
                color: Colors.green,
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder :(c)=>TransactionPage() ));
                },
                child: Text(
                  'Next',
                  style: TextStyle(color: Colors.white),
                ),
              )),
      ],),
    );
  }
}