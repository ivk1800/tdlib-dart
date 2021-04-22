import '../tdapi.dart';

/// Represents a chat event
class ChatEvent extends TdObject {
  ChatEvent(
      {required this.id,
      required this.date,
      required this.userId,
      required this.action});

  /// [id] Chat event identifier
  final int id;

  /// [date] Point in time (Unix timestamp) when the event happened
  final int date;

  /// [userId] Identifier of the user who performed the action that triggered
  /// the event
  final int userId;

  /// [action] Action performed by the user
  final ChatEventAction action;

  static const String CONSTRUCTOR = 'chatEvent';

  static ChatEvent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEvent(
        id: int.tryParse(json['id']) ?? 0,
        date: json['date'],
        userId: json['user_id'],
        action: ChatEventAction.fromJson(json['action'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'date': this.date,
        'user_id': this.userId,
        'action': this.action.toJson(),
        '@type': CONSTRUCTOR
      };
}
