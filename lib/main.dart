import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
// ignore: expected_token
class RandomWordState extends State<RandomWords>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    var WordPair;
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
  
}

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new RandomWordState();

}
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    final wordpair = new WordPair.random();
    final data = "tes";
    return MaterialApp(
      title: 'Welcome to flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Wlcom'),
        ),
        body: Center(
//          child: Text(wordpair.asPascalCase),'
          child: RandomWords(),
        ),
      ),


      debugShowCheckedModeBanner: false,
    );
  }
}
