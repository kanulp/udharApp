import 'package:flutter/material.dart';
import 'package:udhar_app/drawer_page.dart';

import 'otp_page.dart';

class NamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 270.0
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Enter your Name',style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('You name will be used in every transaction delivered to your customers.'),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            alignment: Alignment.center,
            child: TextField(
              cursorColor: Colors.green,
              decoration: InputDecoration(
                focusColor: Colors.green,
                labelText: 'Name',
                prefixIcon: Icon(Icons.person),
                hintText: "Enter Name",
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
                  Navigator.push(context, MaterialPageRoute(builder :(c)=>DrawerPage() ));
                },
                child: Text(
                  'Next',
                  style: TextStyle(color: Colors.white),
                ),
              )),
        ],
      ),
    );
  }
}
