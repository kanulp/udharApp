import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        ListTile(leading: Icon(Icons.person,color: Colors.green),title: Text('Customers'),trailing: Text('2',style: TextStyle(fontWeight: FontWeight.bold),),),
        ListTile(leading: Icon(Icons.monetization_on,color: Colors.green),title: Text('Balance'),trailing: Text('\$50',style: TextStyle(fontWeight: FontWeight.bold),),),
        ListTile(leading: Icon(Icons.history,color: Colors.green),title: Text('Account Statement')),
        ListTile(leading: Icon(Icons.cloud_download,color: Colors.green),title: Text('Download Backup')),
        ListTile(leading: Icon(Icons.security,color: Colors.green),title: Text('Security')),
        ListTile(leading: Icon(Icons.account_box,color: Colors.green),title: Text('Profile')),
        ListTile(leading: Icon(Icons.language,color: Colors.green),title: Text('Language'),trailing: Text('English')),

      ],),
    );
  }
}