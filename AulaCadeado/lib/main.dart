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
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double redBar = 0;
  double greenBar = 0;
  double blueBar = 0;
  double imgSize = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter State'),
          actions: [
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () {
                setState(() {
                  imgSize = imgSize - 20;
                  if (imgSize < 20) {
                    imgSize = 20;
                  }
                });
              },
            ),
            IconButton(
              icon: const Text('S'),
              onPressed: () {
                setState(() {
                  imgSize = 100;
                });
              },
            ),
            IconButton(
              icon: const Text('M'),
              onPressed: () {
                setState(() {
                  imgSize = 200;
                });
              },
            ),
            IconButton(
              icon: const Text('L'),
              onPressed: () {
                setState(() {
                  imgSize = 300;
                });
              },
            ),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                setState(() {
                  imgSize = imgSize + 20;
                });
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: Icon(
                  Icons.lock_clock,
                  color: Color.fromRGBO(
                      redBar.ceil(), greenBar.ceil(), blueBar.ceil(), 100),
                  size: imgSize,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Slider(
                      activeColor: Colors.red,
                      value: redBar,
                      min: 0,
                      max: 255,
                      onChanged: (value) {
                        setState(() {
                          print("${redBar} barra v");
                          print(value);
                          redBar = value;
                        });
                      },
                    ),
                  ),
                  Text(
                    "${redBar.ceil()}",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Slider(
                      activeColor: Colors.green,
                      value: greenBar,
                      min: 0,
                      max: 255,
                      onChanged: (value) {
                        setState(() {
                          print("${greenBar} barra g");
                          print(value);
                          greenBar = value;
                        });
                      },
                    ),
                  ),
                  Text(
                    '${greenBar.ceil()}',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Slider(
                        activeColor: Colors.blue,
                        value: blueBar,
                        min: 0,
                        max: 255,
                        onChanged: (value) {
                          setState(() {
                            print("${blueBar} barra b");
                            print(value);
                            blueBar = value;
                          });
                        }),
                  ),
                  Text(
                    '${blueBar.ceil()}',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
