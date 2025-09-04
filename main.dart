import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override //indicates this method overrides StatelessWidget build
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Activity 1',
      home: const MyHomePage(),
      theme: ThemeData(scaffoldBackgroundColor: Colors.cyan),
      );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( //provides a standard page layout, AppBar, body , text etc.
        appBar: AppBar(
          title: const Text('Activity 1'),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('CHRISTIAN PERALTA\n ',
                    style: TextStyle(fontSize: 20)
                ),
                Image.network('https://c8.alamy.com/comp/P4JDDY/original-film-title-kimi-no-na-wa-english-title-your-name-film-director-makoto-shinkai-year-2016-credit-amusethe-answer-studiocomix-wave-filmeast-japan-marketing-album-P4JDDY.jpg',
                  width: 1000,
                  height: 500,
                ),
                const SizedBox(height:50),
                const Text(
                    'TITLE: YOUR NAME',
                    style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic)
                ),
                const Text ('\n SYNOPSIS',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)
                    ),
                const Text( '\n Your Name (Kimi no Na wa) is a Japanese animated romantic fantasy film directed by Makoto Shinkai. It follows two teenagers, Taki, a high school boy in Tokyo,'
                    '\n and Mitsuha, a girl living in a rural town who mysteriously begin to swap bodies intermittently.As they navigate each others lives, they form a deep connection'
                    '\n without ever meeting in person. However, when the body-swapping suddenly stops Taki sets out to find Mitsuha—only to uncover a shocking truth that transcends time and fate.'
               , style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic) ),
              ]
            ),
        ),
    );
  }
}