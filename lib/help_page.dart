import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
         ExpansionTile(
            title: Text('Question?'),
            children: <Widget>[
              ListTile(title : Text('Answer')),  
            ],
          ),
    );
  }
}