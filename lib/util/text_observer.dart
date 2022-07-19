
class TextSource {
  final List<TextObserver> observers = List.empty(growable: true);
  String? previousValue;

  void onNewText(String text) {
    if (text == previousValue) return;

    previousValue = text;
    for (var element in observers) {element.call(text);}
  }

  void addObserver(TextObserver observer) {
    observers.add(observer);
  }

  void clearObservers() {
    observers.clear();
  }
}

typedef TextObserver = Function(String text);

