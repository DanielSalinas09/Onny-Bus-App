import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class AlertPage extends StatefulWidget {
  @override
  _AlertPageState createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
  String _bus = '';
  String _message = '';
  String _fecha = '';
  String _hora = '';
  String url = 'https://onny-bus.herokuapp.com/api/notificaciones/retrazo';

  Future<String> pedirDatos() async {
    var respuesta = await http.post(url, body: {
      "bus": _bus,
      "message": _message,
      "fecha": _fecha,
      "hora": _hora
    });
    print(respuesta.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alertas'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        children: <Widget>[
          _CrearInput(),
          Divider(),
          _CrearMessage(),
          Divider(),
          _CrearDate(),
          Divider(),
          _CrearHora(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.send),
        onPressed: () {
          pedirDatos();
        },
      ),
    );
  }

  Widget _CrearInput() {
    return TextField(
      autofocus: false,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        counter: Text('Letras ${_bus.length}'),
        hintText: 'Bus',
        labelText: 'Bus',
        suffixIcon: Icon(
          Icons.airport_shuttle,
        ),
        icon: Icon(Icons.directions_bus),
      ),
      onChanged: (valor) {
        setState(() {
          _bus = valor;
        });
      },
    );
  }

  Widget _CrearMessage() {
    return TextField(
      autofocus: false,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        counter: Text('Letras ${_message.length}'),
        hintText: 'Message',
        labelText: 'Mensaje',
        suffixIcon: Icon(
          Icons.add_comment,
        ),
        icon: Icon(Icons.message),
      ),
      onChanged: (valor) {
        setState(() {
          _message = valor;
        });
      },
    );
  }

  Widget _CrearDate() {
    return TextField(
      autofocus: false,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        hintText: 'Fechas',
        labelText: 'Fechas',
        suffixIcon: Icon(
          Icons.date_range,
        ),
        icon: Icon(Icons.calendar_today),
      ),
      onChanged: (valor) {
        setState(() {
          _fecha = valor;
        });
      },
    );
  }

  Widget _CrearHora() {
    return TextField(
      autofocus: false,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        hintText: 'Hora',
        labelText: 'Hora',
        suffixIcon: Icon(
          Icons.date_range,
        ),
        icon: Icon(Icons.calendar_today),
      ),
      onChanged: (valor) {
        setState(() {
          _hora = valor;
        });
      },
    );
  }
}
