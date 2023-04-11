import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of chat events
@immutable
class ChatEvents extends TdObject {
  const ChatEvents({
    required this.events,
  });

  /// [events] List of events
  final List<ChatEvent> events;

  static const String constructor = 'chatEvents';

  static ChatEvents? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEvents(
      events: List<ChatEvent>.from(
          ((json['events'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ChatEvent.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'events': events.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
