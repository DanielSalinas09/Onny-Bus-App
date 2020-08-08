import 'package:flutter/material.dart';
import 'package:onny/src/Pages/Robo_Page.dart';

import 'Alert_Page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ONNY BUS'),
        centerTitle: true,
      ),
      body: _lista(context),
    );
  }

  Widget _lista(BuildContext context) {
    return ListView(
      children: _listaItems(context),
    );
  }

  List<Widget> _listaItems(BuildContext context) {
    return [
      ListTile(
        title: Text('TRANCON'),
        leading: Icon(
          Icons.account_circle,
          color: Colors.blue,
        ),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue,
        ),
        onTap: () {
          final route = MaterialPageRoute(builder: (context) => AlertPage());
          Navigator.push(context, route);
        },
      ),
      Divider(),
      ListTile(
        title: Text('ROBOS'),
        leading: Icon(
          Icons.account_circle,
          color: Colors.blue,
        ),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue,
        ),
        onTap: () {
          final route = MaterialPageRoute(builder: (context) => RoboPage());
          Navigator.push(context, route);
        },
      ),
    ];
  }
}
