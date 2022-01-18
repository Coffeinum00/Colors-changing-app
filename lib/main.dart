import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Colors project',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Colors project'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

int index = 0;
List<Color> colorsList = [
  Colors.deepOrangeAccent[700]!,
  Colors.deepPurple[700]!,
  Colors.green[700]!,
  Colors.red[700]!,
  Colors.yellow[700]!,
];

initState() {
  initState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Klik po kolor'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 250,
                width: 250,
                color: colorsList[index],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: FloatingActionButton(
                onPressed: changeColor,
                backgroundColor: colorsList[index + 1],
                child: const Text('kliknij!'),
              ),
            )
          ],
        ),
      ),
    );
  }

  changeColor() {
    setState(() {
      index = (index + 1);
      if (index == colorsList.length - 1) {
        index = 0;
      }
    });
  }
}
