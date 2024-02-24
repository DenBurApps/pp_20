import 'dart:async';

class EventBus {
  final _controller = StreamController<Event>.broadcast();

  Stream<Event> get _stream => _controller.stream;

  Stream<T> stream<T extends Event>() {
    return _stream.where((event) => event is T).cast<T>();
  }

  void addEvent(Event event) {
    _controller.sink.add(event);
  }
}

class Event {}

class Quiz implements Event {}

class Combs implements Event {}

class Settings implements Event {}