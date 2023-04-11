import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a chat event
@immutable
class ChatEvent extends TdObject {
  const ChatEvent({
    required this.id,
    required this.date,
    required this.memberId,
    required this.action,
  });

  /// [id] Chat event identifier
  final int id;

  /// [date] Point in time (Unix timestamp) when the event happened
  final int date;

  /// [memberId] Identifier of the user or chat who performed the action
  final MessageSender memberId;

  /// [action] The action
  final ChatEventAction action;

  static const String constructor = 'chatEvent';

  static ChatEvent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEvent(
      id: int.tryParse(json['id']) ?? 0,
      date: json['date'] as int,
      memberId:
          MessageSender.fromJson(json['member_id'] as Map<String, dynamic>?)!,
      action:
          ChatEventAction.fromJson(json['action'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'date': date,
        'member_id': memberId.toJson(),
        'action': action.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
