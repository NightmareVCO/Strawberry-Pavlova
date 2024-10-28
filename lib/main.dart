import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ResponsiveHomePage(),
    );
  }
}

class ResponsiveHomePage extends StatelessWidget {
  const ResponsiveHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return const HomePage();
      }),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: const Icon(Icons.home, color: Colors.black),
            title: const Text('Recipe App',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
            backgroundColor: Color.fromARGB(255, 230, 240, 250)),
        body: SafeArea(
          child: Center(
              child: Wrap(
            direction: Axis.horizontal,
            spacing: 10,
            runSpacing: 15,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Wrap(
                    direction: Axis.horizontal,
                    spacing: 10,
                    runSpacing: 15,
                    children: [
                      Wrap(
                        direction: Axis.vertical,
                        spacing: 10,
                        runSpacing: 15,
                        children: [
                          Container(
                            width: 350,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 1.0),
                              color: const Color.fromARGB(255, 230, 240, 250),
                            ),
                            child: const Text(
                              'Strawberry Pavlova',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 30,
                              ),
                            ),
                          ),
                          Container(
                            width: 350,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 1.0),
                              color: const Color.fromARGB(255, 230, 240, 250),
                            ),
                            child: const Text(
                              'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova featues a crisp crust and soft, light inside, topped with fruit and whipped cream.',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            width: 350,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 1.0),
                              color: const Color.fromARGB(255, 230, 240, 250),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                  ],
                                ),
                                Text('170 Reviews'),
                              ],
                            ),
                          ),
                          Container(
                            width: 350,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 1.0),
                              color: const Color.fromARGB(255, 230, 240, 250),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    SizedBox(height: 10),
                                    Icon(
                                      Icons.kitchen_rounded,
                                      color: Colors.green,
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('PREP:'),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('25 min'),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    SizedBox(height: 10),
                                    Icon(
                                      Icons.timer_outlined,
                                      color: Colors.green,
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('COOK:'),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('1 hr'),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    SizedBox(height: 10),
                                    Icon(
                                      Icons.restaurant_outlined,
                                      color: Colors.green,
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('FEEDS:'),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('4-6'),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Image(
                        image:
                            AssetImage('assets/images/Strawberry-Pavlova.png'),
                        fit: BoxFit.fill,
                        width: 600,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
        ));
  }
}
