import 'package:flutter/material.dart';

/// Flutter code sample for [Radio].

enum Llave { planta1, planta2, planta3 }

class MenuRadio extends StatefulWidget {
  const MenuRadio({super.key});

  @override
  State<MenuRadio> createState() => _EstadoMenuRadio();
}

class _EstadoMenuRadio extends State<MenuRadio> {
  Llave? _character = Llave.planta1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('primera planta'),
          leading: Radio<Llave>(
            value: Llave.planta1,
            groupValue: _character,
            onChanged: (Llave? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('segunda planta'),
          leading: Radio<Llave>(
            value: Llave.planta2,
            groupValue: _character,
            onChanged: (Llave? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('tercera planta'),
          leading: Radio<Llave>(
            value: Llave.planta3,
            groupValue: _character,
            onChanged: (Llave? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
