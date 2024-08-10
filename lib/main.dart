import 'package:flutter/material.dart';

void main() {
  runApp(PointerCounter());
}

class PointerCounter extends StatefulWidget {
  @override
  State<PointerCounter> createState() => _PointerCounterState();
}

class _PointerCounterState extends State<PointerCounter> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text('Pointer Counter'),
          ),
          body: Column(
            children: [
              const Spacer(flex: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                       const Text('Team A',
                          style: TextStyle(
                            fontSize: 32,
                          )),
                       Text('$teamAPoints',
                          style: const TextStyle(
                            fontSize: 150,
                          )),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                          // padding: const EdgeInsets.all(35)
                        ),
                        onPressed: () {
                          setState(() {
                            teamAPoints++;
                          });
                        },
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamAPoints += 2;
                          });
                        },
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamAPoints += 3;
                          });
                        },
                        child: const Text(
                          'Add 3 Point',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 2.0,
                    child: Center(
                      child: Container(
                        height: 420.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                       const Text('Team B',
                          style: TextStyle(
                            fontSize: 32,
                          )),
                       Text('$teamBPoints',
                          style: const TextStyle(
                            fontSize: 150,
                          )),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBPoints++;
                          });
                        },
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBPoints += 2;
                          });
                        },
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBPoints += 3;
                          });
                        },
                        child: const Text(
                          'Add 3 Point',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const Spacer(flex: 1),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: const Size(150, 50),
                ),
                onPressed: () {
                  setState(() {
                    teamAPoints = 0;
                    teamBPoints = 0;
                  });
                },
                child: const Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              const Spacer(flex: 1),
            ],
          )),
    );
  }
}
