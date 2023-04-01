import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Home Page'),
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
  // Backend

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(16)
            ),
            Text(
              "Pokedex.",
              style: TextStyle(fontSize: 35, color: Colors.yellow, fontWeight: FontWeight.bold),
            ),
            Padding(padding: EdgeInsets.all(20)
            ),
            Text("Welcome to Pokedex",
            style: TextStyle(
              color: Color.fromARGB(255, 157, 157, 154), 
            fontSize: 16)
            ),
            Text("You can find your favorite pokemon here",
            style: TextStyle(
              color: Color.fromARGB(255, 157, 157, 154), 
            fontSize: 16)
            )
          ],
        ),
      ),
    );
  }
}
