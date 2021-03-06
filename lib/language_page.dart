import 'dart:math';

import 'package:flutter/material.dart';
import 'package:udhar_app/login_page.dart';

class LanguagePage extends StatefulWidget {
  @override
  _LanguagePageState createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  static Random random = new Random();

  @override
  Widget build(BuildContext context) {
    var languageList = ['English','Hindi','Gujarati','Tamil','Punjabi','Marathi'];

    return Scaffold(
      appBar: AppBar(title: Text('Choose Language'),),
      body: ListView(
        children: <Widget>[
          GridView.builder(
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) { 
            return Container(
              margin: EdgeInsets.all(8.0),
              color: getColor(),
              child: Center(child: Text(languageList[index],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18.0),textAlign: TextAlign.center,)),
            );
           }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1.5),
           itemCount: languageList.length,
            
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
                  Navigator.push(context, MaterialPageRoute(builder :(c)=>LoginPage() ));
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
  static Color getColor() {
      return Color.fromARGB(255, random.nextInt(255), random.nextInt(255), random.nextInt(255));
    }
}