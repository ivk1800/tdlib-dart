import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a reaction applied to a message
@immutable
class AddedReaction extends TdObject {
  const AddedReaction({
    required this.type,
    required this.senderId,
    required this.date,
  });

  /// [type] Type of the reaction
  final ReactionType type;

  /// [senderId] Identifier of the chat member, applied the reaction
  final MessageSender senderId;

  /// [date] Point in time (Unix timestamp) when the reaction was added
  final int date;

  static const String constructor = 'addedReaction';

  static AddedReaction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AddedReaction(
      type: ReactionType.fromJson(json['type'] as Map<String, dynamic>?)!,
      senderId:
          MessageSender.fromJson(json['sender_id'] as Map<String, dynamic>?)!,
      date: json['date'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.toJson(),
        'sender_id': senderId.toJson(),
        'date': date,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
