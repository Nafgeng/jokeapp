
class Joke {
  Joke({
    required this.id,
    required this.type,
    required this.setup,
    required this.punchline,
});

  final int id;
  final String type;
  final String setup;
  final String punchline;
}

final List<Joke> jokesList = <Joke>[
  Joke(
      id: 1,
      type: "General",
      setup: "How do you make a tissue dance?",
      punchline: "Damn"
  ),
  Joke(
      id: 2,
      type: "General",
      setup: "What's Forrest Gump's Password?",
      punchline: "1Forrest1"
  ),
  Joke(id: 3,
      type: "General",
      setup: "What do you call a belt made out of wacthes?",
      punchline: "a waist of time"
  ),
  Joke(id: 4,
      type: "Bapak-Bapak",
      setup: "Buwung apa tu man?",
      punchline: "Buwung Puyuh"
  ),
  Joke(id: 5,
      type: "Bapak-Bapak",
      setup: "Mba pesen apa?",
      punchline: "Ayam Goyeng"
  ),
];