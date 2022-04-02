import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Represents a chat event
class ChatEvent extends TdObject {
  ChatEvent(
      {required this.id,
      required this.date,
      required this.memberId,
      required this.action});

  /// [id] Chat event identifier
  final int id;

  /// [date] Point in time (Unix timestamp) when the event happened
  final int date;

  /// [memberId] Identifier of the user or chat who performed the action
  final MessageSender memberId;

  /// [action] The action
  final ChatEventAction action;

  static const String CONSTRUCTOR = 'chatEvent';

  static ChatEvent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEvent(
        id: int.tryParse(json['id']) ?? 0,
        date: json['date'],
        memberId: MessageSender.fromJson(json['member_id'])!,
        action: ChatEventAction.fromJson(json['action'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'date': this.date,
        'member_id': this.memberId.toJson(),
        'action': this.action.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
