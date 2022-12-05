import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(
    welcome: "Pratice 1",
  ));
}

class MyApp extends StatelessWidget {
  final String welcome;
  const MyApp({Key? key, required this.welcome}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  "Jonathan Liebert",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                "Manipulator",
                style: TextStyle(color: Colors.grey[500]),
              )
            ],
          )),
          Row(
            children: [
              Icon(Icons.star, color: Colors.red[500]),
              const Text("4.1")
            ],
          )
        ],
      ),
    );
    Color color = Theme.of(context).primaryColor;
    //button section
    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buttonColumn(color, Icons.call, "CALL"),
          _buttonColumn(color, Icons.near_me, "ROUTE"),
          _buttonColumn(color, Icons.share, "SHARE"),
        ],
      ),
    );
    //Text Area
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
        style: TextStyle(fontFamily: "SourceSansPro", fontSize: 17.0),
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text(welcome),
          ),
          body: ListView(
            children: [
              Image.asset(
                '../assets/images/resimg.jpg',
                width: 600.0,
                height: 240,
                fit: BoxFit.cover,
              ),
              titleSection,
              buttonSection,
              textSection
            ],
          )),
    );
  }
}

//button
Column _buttonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w400, color: color),
        ),
      )
    ],
  );
}
