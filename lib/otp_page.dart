import 'package:flutter/material.dart';
import 'package:udhar_app/name_enter_page.dart';

class OTPPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 270.0),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Please Enter OTP',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              )),
          Container(
            margin: EdgeInsets.all(10.0),
            alignment: Alignment.center,
            child: TextField(
              cursorColor: Colors.green,
              decoration: InputDecoration(
                focusColor: Colors.green,
                labelText: 'OTP',
                hintText: "Enter OTP",
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
                  Navigator.push(
                      context, MaterialPageRoute(builder: (c) => NamePage()));
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
