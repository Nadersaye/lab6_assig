import 'package:flutter/material.dart';

void main() {
  runApp( Basketball_points_counter());
}
// ignore: camel_case_types
class Basketball_points_counter extends StatefulWidget {
  //const Basketball_points_counter({super.key});

  @override
  State<Basketball_points_counter> createState() => _Basketball_points_counterState();
}

class _Basketball_points_counterState extends State<Basketball_points_counter> {
  int teamApoints = 0;
  int teamBpoints = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        title: const Text('BasketBall Points Counter'),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 450,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'TEAM A',
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      '$teamApoints',
                      style: const TextStyle(fontSize: 100),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple),
                        onPressed: () {
                          setState(() {
                            teamApoints += 1;
                          });
                        },
                        child: const Text('+1 Point')),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple),
                        onPressed: () {
                          setState(() {
                            teamApoints += 2;
                          });
                        },
                        child: const Text('+2 Point')),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple),
                        onPressed: () {
                          setState(() {
                            teamApoints += 3;
                          });
                        },
                        child: const Text('+3 Point')),
                  ],
                ),
              ),
               Container(
                height: 450,
                child: VerticalDivider(
                  thickness: 3,
                  indent: 50,
                ),
              ),
             Container(
                height: 450,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'TEAM B',
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      '$teamBpoints',
                      style: const TextStyle(fontSize: 100),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple),
                        onPressed: () {
                          setState(() {
                            teamBpoints += 1;
                          });
                        },
                        child: const Text('+1 Point')),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple),
                        onPressed: () {
                          setState(() {
                            teamBpoints += 2;
                          });
                        },
                        child: const Text('+2 Point')),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple),
                        onPressed: () {
                          setState(() {
                            teamBpoints += 3;
                          });
                        },
                        child: const Text('+3 Point')),
                  ],
                ),
              ),
            ],
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size.fromWidth(100),
                  backgroundColor: Colors.purple),
              onPressed: () {
                setState(() {
                  teamApoints = 0;
                  teamBpoints = 0;
                });
              },
              child: const Text('RESET')),
        ],
      ),
    ),
    );
  }
}

