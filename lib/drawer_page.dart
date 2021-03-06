import 'package:flutter/material.dart';
import 'package:udhar_app/account_page.dart';
import 'package:udhar_app/comming_soon_page.dart';
import 'package:udhar_app/help_page.dart';
import 'package:udhar_app/home_page.dart';

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}
//    final myModel = Provider.of<MyModel>(context, listen: false);

class DrawerPage extends StatefulWidget {
  final drawerItems = [
    DrawerItem("Home", Icons.home),
    DrawerItem("Account", Icons.person),
    DrawerItem("WhatsApp", Icons.message),
    DrawerItem("Share", Icons.share),
    DrawerItem("Help", Icons.help_outline),
    DrawerItem("About Us", Icons.info_outline),
    DrawerItem("Privacy Policy", Icons.lock_outline),
    DrawerItem("Sign Out", Icons.exit_to_app),
  ];

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return HomePage();
      case 1:
        return AccountPage();
      case 2:
        return CommingSoonPage();
      case 3:
        return CommingSoonPage();
      case 4:
        return HelpPage();
      case 5:
        return CommingSoonPage();
      case 6:
        return CommingSoonPage();

      default:
        return Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    var drawerOptions = <Widget>[];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];

      drawerOptions.add(ListTile(
        leading: Icon(d.icon),
        title: Text(d.title),
        selected: i == _selectedDrawerIndex,
        onTap: () => _onSelectItem(i),
      ));
    }
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.drawerItems[_selectedDrawerIndex].title),
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(accountName: Text('Your Name'), accountEmail: Text('9876543210'),currentAccountPicture: CircleAvatar(child: Text('KG'),),),
            SizedBox(height: 20.0),
            Column(children: drawerOptions)
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}
