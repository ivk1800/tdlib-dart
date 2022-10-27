import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about an unread reaction to a message
@immutable
class UnreadReaction extends TdObject {
  const UnreadReaction({
    required this.type,
    required this.senderId,
    required this.isBig,
  });

  /// [type] Type of the reaction
  final ReactionType type;

  /// [senderId] Identifier of the sender, added the reaction
  final MessageSender senderId;

  /// [isBig] True, if the reaction was added with a big animation
  final bool isBig;

  static const String constructor = 'unreadReaction';

  static UnreadReaction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UnreadReaction(
      type: ReactionType.fromJson(json['type'])!,
      senderId: MessageSender.fromJson(json['sender_id'])!,
      isBig: json['is_big'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.toJson(),
        'sender_id': senderId.toJson(),
        'is_big': isBig,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
