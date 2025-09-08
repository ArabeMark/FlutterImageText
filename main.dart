import 'package:flutter/material.dart';

/*The purpose of this syntax is to import flutter material design library
import - Dart keyword to include external libraries
package:flutter/ - material package that comes with flutter
This is essential for building flutter apps with standard UI
 *  */

void main() {
  runApp(const MyApp()); // this function is to initialize the myApp that attached the root widget
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQKlYs1lQsPElSDl4S504hTeN8cLgcGRJRRmfqiXobsRLkzbJzhIrQNYa4p1ix4SO0DWeUI',
              height: 600,
              width: 300,
            ),
            const Text(
              'Haikyu!! The Dumpster Battle',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const Text(
              '\nBoth Karasuno and Nekoma have made it to the third round of nationals.\n'
                  'They are finally going face-to-face for the The Dumpster Battle, the much\n'
                  'awaited face-off. Once the match commences, the two teams waste no time\n'
                  'entering into an intense and fast-paced rally. Tension rises as both teams\n'
                  'are determined to come out victoriously. ',
                textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ),
    );
  }
}