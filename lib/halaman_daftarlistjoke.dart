import 'package:flutter/material.dart';
import 'package:jokeapp/halaman_detailjoke.dart';
import 'package:jokeapp/joke.dart';

class HalamanListJoke extends StatefulWidget {
  final Joke pilihanJoke;
  final ValueChanged<Joke> pilihanJokeCallBack;

  HalamanListJoke(
      {required Key key,
      required this.pilihanJokeCallBack,
      required this.pilihanJoke})
      : super(key: key);

  @override
  _HalamanListJokeState createState() => _HalamanListJokeState();
}

class _HalamanListJokeState extends State<HalamanListJoke> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: jokesList.map((jokesList) {
      return Container(
        child: ListTile(
          title: Text(
            jokesList.setup,
            style: TextStyle(color: Colors.black),
          ),
          onTap: () => widget.pilihanJokeCallBack(jokesList),
          selected: widget.pilihanJoke == jokesList,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), shape: BoxShape.rectangle),
      );
    }).toList());
  }
}

class ListJoke extends StatelessWidget {
  const ListJoke({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Jokes App'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            late final Joke joke = jokesList[index];
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ListDetailJoke(
                    jokedetail: joke,);
                }));
              },
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(flex: 1, child: Text(joke.type)),
                  ],
                ),
              ),
            );
          },
          itemCount: jokesList.length,
        ));
  }
}
