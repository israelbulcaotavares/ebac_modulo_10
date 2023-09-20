import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String _gestoComTexto = 'Toque ou arraste aqui';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página de Stateful Widget'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _gestoComTexto = 'Você tocou!';
            });
          },
          onPanUpdate: (details) {
            setState(() {
              _gestoComTexto = 'Você arrastou!!!';
            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Icon(
                Icons.touch_app,
                size: 100,
                color: Colors.blue,
              ),
              const SizedBox(height: 16),
              Text(
                _gestoComTexto,
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
