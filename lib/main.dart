import 'package:colors/screens/screen_b.dart';
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

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  List<Color> colorsList = [
    Colors.deepOrangeAccent[700]!,
    Colors.deepPurple[700]!,
    Colors.green[700]!,
    Colors.red[700]!,
    Colors.yellow[700]!,
  ];

  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    List screens = [
      Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100.0),
          child: Column(
            children: [
              Container(
                height: 250,
                width: 250,
                color: colorsList[index],
              )
            ],
          ),
        ),
      ),
      ScreenB()
    ];
    return Scaffold(
      backgroundColor: Colors.cyan[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Klik po kolor'),
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue[500],
        selectedItemColor: Colors.white,
        showUnselectedLabels: false,
        iconSize: 30,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.android_rounded),
            label: "what's up",
          ),
        ],
      ),
      floatingActionButton: currentIndex == 1
          ? Container()
          : FloatingActionButton(
              onPressed: changeColor,
              backgroundColor: colorsList[index + 1],
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_circle_up_rounded),
              ),
              elevation: 38.0,
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
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


//  FloatingActionButton(
//                 onPressed: changeColor,
//                 backgroundColor: colorsList[index + 1],
//                 child: const Text('kliknij!'),
//               ),