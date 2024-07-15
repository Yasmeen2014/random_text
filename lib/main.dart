import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HF',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: "",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _fontSize = 50;
  FontWeight _fontWeight = FontWeight.bold;
  Color _color = Colors.blueAccent;
  String _text1 = '';
  String _text2 = '';
  List<String> list = [
    "soso",
    'papa',
    'mama',
    'zozo',
    'yousef',
    'lternative',
    'although',
    'always',
    'AM',
    'amazing',
    'American',
    'among',
    'amount',
    'analysis',
    'analyst',
    'analyze',
    'ancient',
    'and',
    'anger',
    'angle',
    'angry',
    'animal',
    'anniversary',
    'announce',
    'annual',
    'another',
    'answer',
    'anticipate',
    'anxiety',
    'any',
    'anybody',
    'anymore',
    'anyone',
    'anything',
    'anyway',
    'anywhere',
    'apart',
    'apartment',
    'apparent',
    'apparently',
    'appeal',
    'appear',
    'appearance',
    'apple',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Animation"),
      ),
      body: Center(
        child: AnimatedDefaultTextStyle(
          curve: Curves.bounceOut,
          duration: Duration(milliseconds: 800),
          style: TextStyle(
            color: _color,
            fontSize: _fontSize,
            fontWeight: _fontWeight,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_text1),
              Text(_text2),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow_rounded),
        onPressed: () {
          Random r = Random();
          setState(() {
            _text1 = list[r.nextInt(list.length)];
            _text2 = list[r.nextInt(list.length)];

            _fontSize = r.nextInt(60).toDouble() + 10;
            _color = Color.fromRGBO(
                r.nextInt(256), r.nextInt(256), r.nextInt(256), 1);
            // _fontWeight = FontWeight.w100;
          });
        },
      ),
    );
  }
}
