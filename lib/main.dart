import 'package:flutter/material.dart';

void main() {
  runApp(Aku());
}

class Aku extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Flutter',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Belajar Stateless dan Statefull'),
          ),
          body: Center(child: Perbesar(text: 'Hello Kuntul'))),
    );
  }
}

class LayarUtama extends StatelessWidget {
  final String text;
  const LayarUtama({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    );
  }
}

//Membuat statefull widget

class Perbesar extends StatefulWidget {
  final String text;
  const Perbesar({Key? key, required this.text}) : super(key: key);

  @override
  State<Perbesar> createState() => _PerbesarState();
}

class _PerbesarState extends State<Perbesar> {
  double _perbesar = 15;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.text,
          style: TextStyle(fontSize: _perbesar),
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                _perbesar = 32;
              });
            },
            child: Text('Perbesar coyy')),
        ElevatedButton(
            onPressed: () {
              setState(() {
                _perbesar = 15;
              });
            },
            child: Text('Kecilin lagi bang'))
      ],
    );
  }
}
