import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const MyHomePage(title: 'Mirror_Me'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                Container(
                  child: Row(children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 100,
                      height: 100,
                      color: Colors.amber,
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 100,
                      height: 100,
                      color: Colors.amber,
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 100,
                      height: 100,
                      color: Colors.amber,
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 100,
                      height: 100,
                      color: Colors.amber,
                    ),
                  ]),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  color: Colors.amber,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  color: Colors.amber,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  color: Colors.amber,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  color: Colors.amber,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  color: Colors.amber,
                ),
              ]),
            ),
          ),
        ));
  }
}
