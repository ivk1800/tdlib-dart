import 'package:tdlib/td_api.dart';

abstract class Platform {
  void send({required Map<String, dynamic> function});

  Map<String, dynamic> execute({required Map<String, dynamic> function});

  Future<void> initialize();

  Stream<Event> get events;

  void destroy();
}

class Event {
  final TdObject object;
  final int? extra;

  Event({required this.object, required this.extra});
}
