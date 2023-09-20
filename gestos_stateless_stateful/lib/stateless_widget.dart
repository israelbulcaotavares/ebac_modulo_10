import 'package:flutter/material.dart';

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página de Stateless Widget'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.star,
              size: 100,
              color: Colors.blue,
            ),
            SizedBox(height: 16),
            Text(
              'Este é um exemplo de StatelessWidget',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
