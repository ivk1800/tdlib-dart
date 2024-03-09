import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of reactions added to a message
@immutable
class MessageReactions extends TdObject {
  const MessageReactions({
    required this.reactions,
    required this.areTags,
  });

  /// [reactions] List of added reactions
  final List<MessageReaction> reactions;

  /// [areTags] True, if the reactions are tags and Telegram Premium users can
  /// filter messages by them
  final bool areTags;

  static const String constructor = 'messageReactions';

  static MessageReactions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageReactions(
      reactions: List<MessageReaction>.from(
          ((json['reactions'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => MessageReaction.fromJson(item))
              .toList()),
      areTags: json['are_tags'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'reactions': reactions.map((item) => item.toJson()).toList(),
        'are_tags': areTags,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
