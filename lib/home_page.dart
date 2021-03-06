import 'package:flutter/material.dart';
import 'package:udhar_app/add_customer_page.dart';
import 'package:udhar_app/transaction_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
                      context, MaterialPageRoute(builder: (c) => AddCustomerPage()));
             
          }, label: Text('Add Customer'), icon: Icon(Icons.person_add)),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(10.0),
            alignment: Alignment.center,
            child: TextField(
              cursorColor: Colors.green,
              decoration: InputDecoration(
                focusColor: Colors.green,
                labelText: 'Name',
                prefixIcon: Icon(Icons.menu),
                suffixIcon: Icon(Icons.share),
                hintText: "Search or Add",
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
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[Text('Customers'), Icon(Icons.filter_list)],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Text('KG'),
            ),
            onTap: (){
              Navigator.push(
                      context, MaterialPageRoute(builder: (c) => TransactionPage()));
             
            },
            title: Text('Name'),
            subtitle: Text('Added on 5 May, 2020'),
            trailing: Column(
              children: [Text('\$50'), Text('Due')],
            ),
          ),
          ListTile(
            onTap: (){
              Navigator.push(
                      context, MaterialPageRoute(builder: (c) => TransactionPage()));
            },
            leading: CircleAvatar(
              child: Text('KG'),
            ),
            title: Text('Name'),
            subtitle: Text('Added on 5 May, 2020'),
            trailing: Column(
              children: [Text('\$50'), Text('Due')],
            ),
          )
        ],
      ),
    );
  }
}
