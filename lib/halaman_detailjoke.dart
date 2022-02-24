import 'package:flutter/material.dart';
import 'package:jokeapp/joke.dart';

class HalamanDetailJoke extends StatefulWidget {
  late final bool cekDeviceLayout;
  late final Joke joke;

  HalamanDetailJoke(
      {required Key key, required this.cekDeviceLayout, required this.joke})
      : super(key: key);

  @override
  _HalamanDetailJokeState createState() => _HalamanDetailJokeState();
}

class _HalamanDetailJokeState extends State<HalamanDetailJoke> {
  @override
  Widget build(BuildContext context) {
    Widget content = Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(widget.joke?.setup ?? 'joke belum dipilih'),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(widget.joke?.punchline ?? 'tidak ada punchine'),
        ),
      ],
    );
    if (widget.cekDeviceLayout == true) {
      return Center(child: content);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.joke?.type ?? 'no selected type'),
      ),
      body: Center(child: content),
      backgroundColor: Colors.orange,
    );
  }
}

class ListDetailJoke extends StatelessWidget {
  late final Joke jokedetail;

  ListDetailJoke({required this.jokedetail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Joke'),
      ),
      body: SafeArea(
          child: Center(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(jokedetail.setup),
                Text(jokedetail.punchline)
              ],
            ),
          ),
        ),
      );
  }
}
