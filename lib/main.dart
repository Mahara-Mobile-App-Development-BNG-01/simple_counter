import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('You can increase or decrease this counter'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      if (counter < 10) {
                        setState(() {
                          counter++;
                        });
                      }
                    },
                    icon: Icon(
                      Icons.add_circle_outline,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    '$counter',
                    style: TextStyle(fontSize: 28),
                  ),
                  IconButton(
                    onPressed: () {
                      if (counter>0) {
                        setState(() {
                          counter--;
                        });
                      }
                    },
                    icon: Icon(
                      Icons.remove_circle_outline,
                      color: Colors.red.shade300,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
